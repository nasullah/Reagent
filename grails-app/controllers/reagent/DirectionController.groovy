package reagent


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * DirectionController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class DirectionController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

	def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Direction.list(params), model:[directionInstanceCount: Direction.count()]
    }

	def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Direction.list(params), model:[directionInstanceCount: Direction.count()]
    }

    def show(Direction directionInstance) {
        respond directionInstance
    }

    def create() {
        respond new Direction(params)
    }

    @Transactional
    def save(Direction directionInstance) {
        if (directionInstance == null) {
            notFound()
            return
        }

        if (directionInstance.hasErrors()) {
            respond directionInstance.errors, view:'create'
            return
        }

        directionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'directionInstance.label', default: 'Direction'), directionInstance.id])
                redirect directionInstance
            }
            '*' { respond directionInstance, [status: CREATED] }
        }
    }

    def edit(Direction directionInstance) {
        respond directionInstance
    }

    @Transactional
    def update(Direction directionInstance) {
        if (directionInstance == null) {
            notFound()
            return
        }

        if (directionInstance.hasErrors()) {
            respond directionInstance.errors, view:'edit'
            return
        }

        directionInstance.save flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Direction.label', default: 'Direction'), directionInstance.id])
                redirect directionInstance
            }
            '*'{ respond directionInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Direction directionInstance) {

        if (directionInstance == null) {
            notFound()
            return
        }

        directionInstance.delete flush:true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Direction.label', default: 'Direction'), directionInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'directionInstance.label', default: 'Direction'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
