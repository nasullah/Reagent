<%@ page import="reagent.POStatus" %>



			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: POStatusInstance, field: 'pOStatusName', 'error')} ">
						<label for="pOStatusName" class="control-label"><g:message code="POStatus.pOStatusName.label" default="PO Status Name" /></label>
						<div>
							<g:textField class="form-control" name="pOStatusName" value="${POStatusInstance?.pOStatusName}"/>
							<span class="help-inline">${hasErrors(bean: POStatusInstance, field: 'pOStatusName', 'error')}</span>
						</div>
					</div>
				</div>
			</div>

