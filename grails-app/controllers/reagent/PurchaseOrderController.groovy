package reagent


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * PurchaseOrderController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class PurchaseOrderController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PurchaseOrder.list(params), model: [purchaseOrderInstanceCount: PurchaseOrder.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond PurchaseOrder.list(params), model: [purchaseOrderInstanceCount: PurchaseOrder.count()]
    }

    def show(PurchaseOrder purchaseOrderInstance) {
        respond purchaseOrderInstance
    }

    def create() {
        respond new PurchaseOrder(params)
    }

    @Transactional
    def save(PurchaseOrder purchaseOrderInstance) {
        if (purchaseOrderInstance == null) {
            notFound()
            return
        }

        if (purchaseOrderInstance.hasErrors()) {
            respond purchaseOrderInstance.errors, view: 'create'
            return
        }

        purchaseOrderInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'purchaseOrderInstance.label', default: 'PurchaseOrder'), purchaseOrderInstance.id])
                redirect purchaseOrderInstance
            }
            '*' { respond purchaseOrderInstance, [status: CREATED] }
        }
    }

    def edit(PurchaseOrder purchaseOrderInstance) {
        respond purchaseOrderInstance
    }

    @Transactional
    def update(PurchaseOrder purchaseOrderInstance) {
        if (purchaseOrderInstance == null) {
            notFound()
            return
        }

        if (purchaseOrderInstance.hasErrors()) {
            respond purchaseOrderInstance.errors, view: 'edit'
            return
        }

        purchaseOrderInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'PurchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.id])
                redirect purchaseOrderInstance
            }
            '*' { respond purchaseOrderInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(PurchaseOrder purchaseOrderInstance) {

        if (purchaseOrderInstance == null) {
            notFound()
            return
        }

        purchaseOrderInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'PurchaseOrder.label', default: 'PurchaseOrder'), purchaseOrderInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'purchaseOrderInstance.label', default: 'PurchaseOrder'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
