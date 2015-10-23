package reagent


import grails.test.mixin.*
import spock.lang.*

@TestFor(MovementTypeController)
@Mock(MovementType)
class MovementTypeControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.movementTypeInstanceList
        model.movementTypeInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.movementTypeInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        def movementType = new MovementType()
        movementType.validate()
        controller.save(movementType)

        then: "The create view is rendered again with the correct model"
        model.movementTypeInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        movementType = new MovementType(params)

        controller.save(movementType)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/movementType/show/1'
        controller.flash.message != null
        MovementType.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def movementType = new MovementType(params)
        controller.show(movementType)

        then: "A model is populated containing the domain instance"
        model.movementTypeInstance == movementType
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def movementType = new MovementType(params)
        controller.edit(movementType)

        then: "A model is populated containing the domain instance"
        model.movementTypeInstance == movementType
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/movementType/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def movementType = new MovementType()
        movementType.validate()
        controller.update(movementType)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.movementTypeInstance == movementType

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        movementType = new MovementType(params).save(flush: true)
        controller.update(movementType)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/movementType/show/$movementType.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/movementType/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def movementType = new MovementType(params).save(flush: true)

        then: "It exists"
        MovementType.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(movementType)

        then: "The instance is deleted"
        MovementType.count() == 0
        response.redirectedUrl == '/movementType/index'
        flash.message != null
    }
}
