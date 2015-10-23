package reagent


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * POStatusController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class POStatusController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond POStatus.list(params), model: [POStatusInstanceCount: POStatus.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond POStatus.list(params), model: [POStatusInstanceCount: POStatus.count()]
    }

    def show(POStatus POStatusInstance) {
        respond POStatusInstance
    }

    def create() {
        respond new POStatus(params)
    }

    @Transactional
    def save(POStatus POStatusInstance) {
        if (POStatusInstance == null) {
            notFound()
            return
        }

        if (POStatusInstance.hasErrors()) {
            respond POStatusInstance.errors, view: 'create'
            return
        }

        POStatusInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'POStatusInstance.label', default: 'POStatus'), POStatusInstance.id])
                redirect POStatusInstance
            }
            '*' { respond POStatusInstance, [status: CREATED] }
        }
    }

    def edit(POStatus POStatusInstance) {
        respond POStatusInstance
    }

    @Transactional
    def update(POStatus POStatusInstance) {
        if (POStatusInstance == null) {
            notFound()
            return
        }

        if (POStatusInstance.hasErrors()) {
            respond POStatusInstance.errors, view: 'edit'
            return
        }

        POStatusInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'POStatus.label', default: 'POStatus'), POStatusInstance.id])
                redirect POStatusInstance
            }
            '*' { respond POStatusInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(POStatus POStatusInstance) {

        if (POStatusInstance == null) {
            notFound()
            return
        }

        POStatusInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'POStatus.label', default: 'POStatus'), POStatusInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'POStatusInstance.label', default: 'POStatus'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
