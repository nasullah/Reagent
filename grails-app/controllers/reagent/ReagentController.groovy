package reagent


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * ReagentController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class ReagentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Reagent.list(params), model: [reagentInstanceCount: Reagent.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Reagent.list(params), model: [reagentInstanceCount: Reagent.count()]
    }

    def show(Reagent reagentInstance) {
        respond reagentInstance
    }

    def create() {
        respond new Reagent(params)
    }

    @Transactional
    def save(Reagent reagentInstance) {
        if (reagentInstance == null) {
            notFound()
            return
        }

        if (reagentInstance.hasErrors()) {
            respond reagentInstance.errors, view: 'create'
            return
        }

        reagentInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'reagentInstance.label', default: 'Reagent'), reagentInstance.id])
                redirect reagentInstance
            }
            '*' { respond reagentInstance, [status: CREATED] }
        }
    }

    def edit(Reagent reagentInstance) {
        respond reagentInstance
    }

    @Transactional
    def update(Reagent reagentInstance) {
        if (reagentInstance == null) {
            notFound()
            return
        }

        if (reagentInstance.hasErrors()) {
            respond reagentInstance.errors, view: 'edit'
            return
        }

        reagentInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Reagent.label', default: 'Reagent'), reagentInstance.id])
                redirect reagentInstance
            }
            '*' { respond reagentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Reagent reagentInstance) {

        if (reagentInstance == null) {
            notFound()
            return
        }

        reagentInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Reagent.label', default: 'Reagent'), reagentInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'reagentInstance.label', default: 'Reagent'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
