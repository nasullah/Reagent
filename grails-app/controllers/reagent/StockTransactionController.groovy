package reagent


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * StockTransactionController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class StockTransactionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StockTransaction.list(params), model: [stockTransactionInstanceCount: StockTransaction.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StockTransaction.list(params), model: [stockTransactionInstanceCount: StockTransaction.count()]
    }

    def show(StockTransaction stockTransactionInstance) {
        respond stockTransactionInstance
    }

    def create() {
        respond new StockTransaction(params)
    }

    @Transactional
    def save(StockTransaction stockTransactionInstance) {
        if (stockTransactionInstance == null) {
            notFound()
            return
        }

        if (stockTransactionInstance.hasErrors()) {
            respond stockTransactionInstance.errors, view: 'create'
            return
        }

        stockTransactionInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'stockTransactionInstance.label', default: 'StockTransaction'), stockTransactionInstance.id])
                redirect stockTransactionInstance
            }
            '*' { respond stockTransactionInstance, [status: CREATED] }
        }
    }

    def edit(StockTransaction stockTransactionInstance) {
        respond stockTransactionInstance
    }

    @Transactional
    def update(StockTransaction stockTransactionInstance) {
        if (stockTransactionInstance == null) {
            notFound()
            return
        }

        if (stockTransactionInstance.hasErrors()) {
            respond stockTransactionInstance.errors, view: 'edit'
            return
        }

        stockTransactionInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StockTransaction.label', default: 'StockTransaction'), stockTransactionInstance.id])
                redirect stockTransactionInstance
            }
            '*' { respond stockTransactionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StockTransaction stockTransactionInstance) {

        if (stockTransactionInstance == null) {
            notFound()
            return
        }

        stockTransactionInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StockTransaction.label', default: 'StockTransaction'), stockTransactionInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stockTransactionInstance.label', default: 'StockTransaction'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
