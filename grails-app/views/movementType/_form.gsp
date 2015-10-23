<%@ page import="reagent.MovementType" %>



			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: movementTypeInstance, field: 'movementTypeName', 'error')} ">
						<label for="movementTypeName" class="control-label"><g:message code="movementType.movementTypeName.label" default="Movement Type Name" /></label>
						<div>
							<g:textField class="form-control" name="movementTypeName" value="${movementTypeInstance?.movementTypeName}"/>
							<span class="help-inline">${hasErrors(bean: movementTypeInstance, field: 'movementTypeName', 'error')}</span>
						</div>
					</div>
				</div>
			</div>
