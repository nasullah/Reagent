package reagent


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

/**
 * UnitsOfMeasureController
 * A controller class handles incoming web requests and performs actions such as redirects, rendering views and so on.
 */
@Transactional(readOnly = true)
class UnitsOfMeasureController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnitsOfMeasure.list(params), model: [unitsOfMeasureInstanceCount: UnitsOfMeasure.count()]
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond UnitsOfMeasure.list(params), model: [unitsOfMeasureInstanceCount: UnitsOfMeasure.count()]
    }

    def show(UnitsOfMeasure unitsOfMeasureInstance) {
        respond unitsOfMeasureInstance
    }

    def create() {
        respond new UnitsOfMeasure(params)
    }

    @Transactional
    def save(UnitsOfMeasure unitsOfMeasureInstance) {
        if (unitsOfMeasureInstance == null) {
            notFound()
            return
        }

        if (unitsOfMeasureInstance.hasErrors()) {
            respond unitsOfMeasureInstance.errors, view: 'create'
            return
        }

        unitsOfMeasureInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.created.message', args: [message(code: 'unitsOfMeasureInstance.label', default: 'UnitsOfMeasure'), unitsOfMeasureInstance.id])
                redirect unitsOfMeasureInstance
            }
            '*' { respond unitsOfMeasureInstance, [status: CREATED] }
        }
    }

    def edit(UnitsOfMeasure unitsOfMeasureInstance) {
        respond unitsOfMeasureInstance
    }

    @Transactional
    def update(UnitsOfMeasure unitsOfMeasureInstance) {
        if (unitsOfMeasureInstance == null) {
            notFound()
            return
        }

        if (unitsOfMeasureInstance.hasErrors()) {
            respond unitsOfMeasureInstance.errors, view: 'edit'
            return
        }

        unitsOfMeasureInstance.save flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'UnitsOfMeasure.label', default: 'UnitsOfMeasure'), unitsOfMeasureInstance.id])
                redirect unitsOfMeasureInstance
            }
            '*' { respond unitsOfMeasureInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(UnitsOfMeasure unitsOfMeasureInstance) {

        if (unitsOfMeasureInstance == null) {
            notFound()
            return
        }

        unitsOfMeasureInstance.delete flush: true

        request.withFormat {
            form {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'UnitsOfMeasure.label', default: 'UnitsOfMeasure'), unitsOfMeasureInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'unitsOfMeasureInstance.label', default: 'UnitsOfMeasure'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
