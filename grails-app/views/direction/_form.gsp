<%@ page import="reagent.Direction" %>



			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: directionInstance, field: 'directionName', 'error')} ">
						<label for="directionName" class="control-label"><g:message code="direction.directionName.label" default="Direction Name" /></label>
						<div>
							<g:textField class="form-control" name="directionName" value="${directionInstance?.directionName}"/>
							<span class="help-inline">${hasErrors(bean: directionInstance, field: 'directionName', 'error')}</span>
						</div>
					</div>
				</div>
			</div>
