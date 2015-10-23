<%@ page import="reagent.ExpiryPolicy" %>



			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: expiryPolicyInstance, field: 'expiryPolicyName', 'error')} ">
						<label for="expiryPolicyName" class="control-label"><g:message code="expiryPolicy.expiryPolicyName.label" default="Expiry Policy Name" /></label>
						<div>
							<g:textField class="form-control" name="expiryPolicyName" value="${expiryPolicyInstance?.expiryPolicyName}"/>
							<span class="help-inline">${hasErrors(bean: expiryPolicyInstance, field: 'expiryPolicyName', 'error')}</span>
						</div>
					</div>
				</div>
			</div>
