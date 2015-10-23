<%@ page import="reagent.Location" %>



			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: locationInstance, field: 'identifier', 'error')} ">
						<label for="identifier" class="control-label"><g:message code="location.identifier.label" default="Identifier" /></label>
						<div>
							<g:textField class="form-control" name="identifier" value="${locationInstance?.identifier}"/>
							<span class="help-inline">${hasErrors(bean: locationInstance, field: 'identifier', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: locationInstance, field: 'description', 'error')} ">
						<label for="description" class="control-label"><g:message code="location.description.label" default="Description" /></label>
						<div>
							<g:textField class="form-control" name="description" value="${locationInstance?.description}"/>
							<span class="help-inline">${hasErrors(bean: locationInstance, field: 'description', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: locationInstance, field: 'notes', 'error')} ">
						<label for="notes" class="control-label"><g:message code="location.notes.label" default="Notes" /></label>
						<div>
							<g:textArea class="form-control" name="notes" cols="40" rows="5" value="${locationInstance?.notes}"/>
							<span class="help-inline">${hasErrors(bean: locationInstance, field: 'notes', 'error')}</span>
						</div>
					</div>
				</div>
			</div>

