package reagent


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * ItemApprovalController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class ItemApprovalController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ItemApproval.list(params), model: [itemApprovalInstanceCount: ItemApproval.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ItemApproval.list(params), model: [itemApprovalInstanceCount: ItemApproval.count()]
    }

    def show(ItemApproval itemApprovalInstance) {
        respond itemApprovalInstance
    }

    def create() {
        respond new ItemApproval(params)
    }

    @Transactional
    def save(ItemApproval itemApprovalInstance) {
        if (itemApprovalInstance == null) {
            notFound()
            return
        }

        if (itemApprovalInstance.hasErrors()) {
            respond itemApprovalInstance.errors, view: 'create'
            return
        }

        itemApprovalInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'itemApprovalInstance.label', default: 'ItemApproval'), itemApprovalInstance.id])
                redirect itemApprovalInstance
            }
            '*' { respond itemApprovalInstance, [status: CREATED] }
        }
    }

    def edit(ItemApproval itemApprovalInstance) {
        respond itemApprovalInstance
    }

    @Transactional
    def update(ItemApproval itemApprovalInstance) {
        if (itemApprovalInstance == null) {
            notFound()
            return
        }

        if (itemApprovalInstance.hasErrors()) {
            respond itemApprovalInstance.errors, view: 'edit'
            return
        }

        itemApprovalInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ItemApproval.label', default: 'ItemApproval'), itemApprovalInstance.id])
                redirect itemApprovalInstance
            }
            '*' { respond itemApprovalInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ItemApproval itemApprovalInstance) {

        if (itemApprovalInstance == null) {
            notFound()
            return
        }

        itemApprovalInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ItemApproval.label', default: 'ItemApproval'), itemApprovalInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'itemApprovalInstance.label', default: 'ItemApproval'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
