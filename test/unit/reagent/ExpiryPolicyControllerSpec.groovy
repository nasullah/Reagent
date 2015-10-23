package reagent


import grails.test.mixin.*
import spock.lang.*

@TestFor(ExpiryPolicyController)
@Mock(ExpiryPolicy)
class ExpiryPolicyControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.expiryPolicyInstanceList
        model.expiryPolicyInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.expiryPolicyInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        def expiryPolicy = new ExpiryPolicy()
        expiryPolicy.validate()
        controller.save(expiryPolicy)

        then: "The create view is rendered again with the correct model"
        model.expiryPolicyInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        expiryPolicy = new ExpiryPolicy(params)

        controller.save(expiryPolicy)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/expiryPolicy/show/1'
        controller.flash.message != null
        ExpiryPolicy.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def expiryPolicy = new ExpiryPolicy(params)
        controller.show(expiryPolicy)

        then: "A model is populated containing the domain instance"
        model.expiryPolicyInstance == expiryPolicy
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def expiryPolicy = new ExpiryPolicy(params)
        controller.edit(expiryPolicy)

        then: "A model is populated containing the domain instance"
        model.expiryPolicyInstance == expiryPolicy
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/expiryPolicy/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def expiryPolicy = new ExpiryPolicy()
        expiryPolicy.validate()
        controller.update(expiryPolicy)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.expiryPolicyInstance == expiryPolicy

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        expiryPolicy = new ExpiryPolicy(params).save(flush: true)
        controller.update(expiryPolicy)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/expiryPolicy/show/$expiryPolicy.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/expiryPolicy/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def expiryPolicy = new ExpiryPolicy(params).save(flush: true)

        then: "It exists"
        ExpiryPolicy.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(expiryPolicy)

        then: "The instance is deleted"
        ExpiryPolicy.count() == 0
        response.redirectedUrl == '/expiryPolicy/index'
        flash.message != null
    }
}
