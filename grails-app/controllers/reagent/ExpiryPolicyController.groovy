package reagent


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * ExpiryPolicyController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class ExpiryPolicyController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ExpiryPolicy.list(params), model: [expiryPolicyInstanceCount: ExpiryPolicy.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ExpiryPolicy.list(params), model: [expiryPolicyInstanceCount: ExpiryPolicy.count()]
    }

    def show(ExpiryPolicy expiryPolicyInstance) {
        respond expiryPolicyInstance
    }

    def create() {
        respond new ExpiryPolicy(params)
    }

    @Transactional
    def save(ExpiryPolicy expiryPolicyInstance) {
        if (expiryPolicyInstance == null) {
            notFound()
            return
        }

        if (expiryPolicyInstance.hasErrors()) {
            respond expiryPolicyInstance.errors, view: 'create'
            return
        }

        expiryPolicyInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'expiryPolicyInstance.label', default: 'ExpiryPolicy'), expiryPolicyInstance.id])
                redirect expiryPolicyInstance
            }
            '*' { respond expiryPolicyInstance, [status: CREATED] }
        }
    }

    def edit(ExpiryPolicy expiryPolicyInstance) {
        respond expiryPolicyInstance
    }

    @Transactional
    def update(ExpiryPolicy expiryPolicyInstance) {
        if (expiryPolicyInstance == null) {
            notFound()
            return
        }

        if (expiryPolicyInstance.hasErrors()) {
            respond expiryPolicyInstance.errors, view: 'edit'
            return
        }

        expiryPolicyInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ExpiryPolicy.label', default: 'ExpiryPolicy'), expiryPolicyInstance.id])
                redirect expiryPolicyInstance
            }
            '*' { respond expiryPolicyInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ExpiryPolicy expiryPolicyInstance) {

        if (expiryPolicyInstance == null) {
            notFound()
            return
        }

        expiryPolicyInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ExpiryPolicy.label', default: 'ExpiryPolicy'), expiryPolicyInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'expiryPolicyInstance.label', default: 'ExpiryPolicy'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
