package reagent


import grails.test.mixin.*
import spock.lang.*

@TestFor(StockTransactionController)
@Mock(StockTransaction)
class StockTransactionControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.stockTransactionInstanceList
        model.stockTransactionInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.stockTransactionInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        def stockTransaction = new StockTransaction()
        stockTransaction.validate()
        controller.save(stockTransaction)

        then: "The create view is rendered again with the correct model"
        model.stockTransactionInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        stockTransaction = new StockTransaction(params)

        controller.save(stockTransaction)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/stockTransaction/show/1'
        controller.flash.message != null
        StockTransaction.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def stockTransaction = new StockTransaction(params)
        controller.show(stockTransaction)

        then: "A model is populated containing the domain instance"
        model.stockTransactionInstance == stockTransaction
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def stockTransaction = new StockTransaction(params)
        controller.edit(stockTransaction)

        then: "A model is populated containing the domain instance"
        model.stockTransactionInstance == stockTransaction
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/stockTransaction/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def stockTransaction = new StockTransaction()
        stockTransaction.validate()
        controller.update(stockTransaction)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.stockTransactionInstance == stockTransaction

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        stockTransaction = new StockTransaction(params).save(flush: true)
        controller.update(stockTransaction)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/stockTransaction/show/$stockTransaction.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/stockTransaction/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def stockTransaction = new StockTransaction(params).save(flush: true)

        then: "It exists"
        StockTransaction.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(stockTransaction)

        then: "The instance is deleted"
        StockTransaction.count() == 0
        response.redirectedUrl == '/stockTransaction/index'
        flash.message != null
    }
}
