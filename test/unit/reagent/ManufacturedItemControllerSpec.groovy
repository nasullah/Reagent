package reagent


import grails.test.mixin.*
import spock.lang.*

@TestFor(ManufacturedItemController)
@Mock(ManufacturedItem)
class ManufacturedItemControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.manufacturedItemInstanceList
        model.manufacturedItemInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.manufacturedItemInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        def manufacturedItem = new ManufacturedItem()
        manufacturedItem.validate()
        controller.save(manufacturedItem)

        then: "The create view is rendered again with the correct model"
        model.manufacturedItemInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        manufacturedItem = new ManufacturedItem(params)

        controller.save(manufacturedItem)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/manufacturedItem/show/1'
        controller.flash.message != null
        ManufacturedItem.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def manufacturedItem = new ManufacturedItem(params)
        controller.show(manufacturedItem)

        then: "A model is populated containing the domain instance"
        model.manufacturedItemInstance == manufacturedItem
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def manufacturedItem = new ManufacturedItem(params)
        controller.edit(manufacturedItem)

        then: "A model is populated containing the domain instance"
        model.manufacturedItemInstance == manufacturedItem
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/manufacturedItem/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def manufacturedItem = new ManufacturedItem()
        manufacturedItem.validate()
        controller.update(manufacturedItem)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.manufacturedItemInstance == manufacturedItem

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        manufacturedItem = new ManufacturedItem(params).save(flush: true)
        controller.update(manufacturedItem)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/manufacturedItem/show/$manufacturedItem.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/manufacturedItem/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def manufacturedItem = new ManufacturedItem(params).save(flush: true)

        then: "It exists"
        ManufacturedItem.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(manufacturedItem)

        then: "The instance is deleted"
        ManufacturedItem.count() == 0
        response.redirectedUrl == '/manufacturedItem/index'
        flash.message != null
    }
}
