package reagent


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * ManufacturedItemController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class ManufacturedItemController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ManufacturedItem.list(params), model: [manufacturedItemInstanceCount: ManufacturedItem.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ManufacturedItem.list(params), model: [manufacturedItemInstanceCount: ManufacturedItem.count()]
    }

    def show(ManufacturedItem manufacturedItemInstance) {
        respond manufacturedItemInstance
    }

    def create() {
        respond new ManufacturedItem(params)
    }

    @Transactional
    def save(ManufacturedItem manufacturedItemInstance) {
        if (manufacturedItemInstance == null) {
            notFound()
            return
        }

        if (manufacturedItemInstance.hasErrors()) {
            respond manufacturedItemInstance.errors, view: 'create'
            return
        }

        manufacturedItemInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'manufacturedItemInstance.label', default: 'ManufacturedItem'), manufacturedItemInstance.id])
                redirect manufacturedItemInstance
            }
            '*' { respond manufacturedItemInstance, [status: CREATED] }
        }
    }

    def edit(ManufacturedItem manufacturedItemInstance) {
        respond manufacturedItemInstance
    }

    @Transactional
    def update(ManufacturedItem manufacturedItemInstance) {
        if (manufacturedItemInstance == null) {
            notFound()
            return
        }

        if (manufacturedItemInstance.hasErrors()) {
            respond manufacturedItemInstance.errors, view: 'edit'
            return
        }

        manufacturedItemInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ManufacturedItem.label', default: 'ManufacturedItem'), manufacturedItemInstance.id])
                redirect manufacturedItemInstance
            }
            '*' { respond manufacturedItemInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ManufacturedItem manufacturedItemInstance) {

        if (manufacturedItemInstance == null) {
            notFound()
            return
        }

        manufacturedItemInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ManufacturedItem.label', default: 'ManufacturedItem'), manufacturedItemInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'manufacturedItemInstance.label', default: 'ManufacturedItem'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
