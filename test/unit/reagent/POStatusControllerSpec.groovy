package reagent


import grails.test.mixin.*
import spock.lang.*

@TestFor(POStatusController)
@Mock(POStatus)
class POStatusControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.POStatusInstanceList
        model.POStatusInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.POStatusInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        def POStatus = new POStatus()
        POStatus.validate()
        controller.save(POStatus)

        then: "The create view is rendered again with the correct model"
        model.POStatusInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        POStatus = new POStatus(params)

        controller.save(POStatus)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/POStatus/show/1'
        controller.flash.message != null
        POStatus.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def POStatus = new POStatus(params)
        controller.show(POStatus)

        then: "A model is populated containing the domain instance"
        model.POStatusInstance == POStatus
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def POStatus = new POStatus(params)
        controller.edit(POStatus)

        then: "A model is populated containing the domain instance"
        model.POStatusInstance == POStatus
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/POStatus/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def POStatus = new POStatus()
        POStatus.validate()
        controller.update(POStatus)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.POStatusInstance == POStatus

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        POStatus = new POStatus(params).save(flush: true)
        controller.update(POStatus)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/POStatus/show/$POStatus.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/POStatus/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def POStatus = new POStatus(params).save(flush: true)

        then: "It exists"
        POStatus.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(POStatus)

        then: "The instance is deleted"
        POStatus.count() == 0
        response.redirectedUrl == '/POStatus/index'
        flash.message != null
    }
}
