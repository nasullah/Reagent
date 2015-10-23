package reagent


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * StockStatusController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class StockStatusController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StockStatus.list(params), model: [stockStatusInstanceCount: StockStatus.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond StockStatus.list(params), model: [stockStatusInstanceCount: StockStatus.count()]
    }

    def show(StockStatus stockStatusInstance) {
        respond stockStatusInstance
    }

    def create() {
        respond new StockStatus(params)
    }

    @Transactional
    def save(StockStatus stockStatusInstance) {
        if (stockStatusInstance == null) {
            notFound()
            return
        }

        if (stockStatusInstance.hasErrors()) {
            respond stockStatusInstance.errors, view: 'create'
            return
        }

        stockStatusInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'stockStatusInstance.label', default: 'StockStatus'), stockStatusInstance.id])
                redirect stockStatusInstance
            }
            '*' { respond stockStatusInstance, [status: CREATED] }
        }
    }

    def edit(StockStatus stockStatusInstance) {
        respond stockStatusInstance
    }

    @Transactional
    def update(StockStatus stockStatusInstance) {
        if (stockStatusInstance == null) {
            notFound()
            return
        }

        if (stockStatusInstance.hasErrors()) {
            respond stockStatusInstance.errors, view: 'edit'
            return
        }

        stockStatusInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'StockStatus.label', default: 'StockStatus'), stockStatusInstance.id])
                redirect stockStatusInstance
            }
            '*' { respond stockStatusInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(StockStatus stockStatusInstance) {

        if (stockStatusInstance == null) {
            notFound()
            return
        }

        stockStatusInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'StockStatus.label', default: 'StockStatus'), stockStatusInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'stockStatusInstance.label', default: 'StockStatus'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
