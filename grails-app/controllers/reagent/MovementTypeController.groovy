package reagent


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * MovementTypeController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class MovementTypeController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MovementType.list(params), model: [movementTypeInstanceCount: MovementType.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond MovementType.list(params), model: [movementTypeInstanceCount: MovementType.count()]
    }

    def show(MovementType movementTypeInstance) {
        respond movementTypeInstance
    }

    def create() {
        respond new MovementType(params)
    }

    @Transactional
    def save(MovementType movementTypeInstance) {
        if (movementTypeInstance == null) {
            notFound()
            return
        }

        if (movementTypeInstance.hasErrors()) {
            respond movementTypeInstance.errors, view: 'create'
            return
        }

        movementTypeInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'movementTypeInstance.label', default: 'MovementType'), movementTypeInstance.id])
                redirect movementTypeInstance
            }
            '*' { respond movementTypeInstance, [status: CREATED] }
        }
    }

    def edit(MovementType movementTypeInstance) {
        respond movementTypeInstance
    }

    @Transactional
    def update(MovementType movementTypeInstance) {
        if (movementTypeInstance == null) {
            notFound()
            return
        }

        if (movementTypeInstance.hasErrors()) {
            respond movementTypeInstance.errors, view: 'edit'
            return
        }

        movementTypeInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'MovementType.label', default: 'MovementType'), movementTypeInstance.id])
                redirect movementTypeInstance
            }
            '*' { respond movementTypeInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(MovementType movementTypeInstance) {

        if (movementTypeInstance == null) {
            notFound()
            return
        }

        movementTypeInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'MovementType.label', default: 'MovementType'), movementTypeInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'movementTypeInstance.label', default: 'MovementType'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
