<%@ page import="reagent.Reagent" %>


			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: reagentInstance, field: 'identifier', 'error')} ">
						<label for="identifier" class="control-label"><g:message code="reagent.identifier.label" default="Identifier" /></label>
						<div>
							<g:textField class="form-control" name="identifier" value="${reagentInstance?.identifier}"/>
							<span class="help-inline">${hasErrors(bean: reagentInstance, field: 'identifier', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: reagentInstance, field: 'name', 'error')} ">
						<label for="name" class="control-label"><g:message code="reagent.name.label" default="Name" /></label>
						<div>
							<g:textField class="form-control" name="name" value="${reagentInstance?.name}"/>
							<span class="help-inline">${hasErrors(bean: reagentInstance, field: 'name', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: reagentInstance, field: 'minimumStock', 'error')} required">
						<label for="minimumStock" class="control-label"><g:message code="reagent.minimumStock.label" default="Minimum Stock" /><span class="required-indicator">*</span></label>
						<div>
							<g:field class="form-control" name="minimumStock" value="${fieldValue(bean: reagentInstance, field: 'minimumStock')}" required=""/>
							<span class="help-inline">${hasErrors(bean: reagentInstance, field: 'minimumStock', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: reagentInstance, field: 'maximumStock', 'error')} required">
						<label for="maximumStock" class="control-label"><g:message code="reagent.maximumStock.label" default="Maximum Stock" /><span class="required-indicator">*</span></label>
						<div>
							<g:field class="form-control" name="maximumStock" value="${fieldValue(bean: reagentInstance, field: 'maximumStock')}" required=""/>
							<span class="help-inline">${hasErrors(bean: reagentInstance, field: 'maximumStock', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: reagentInstance, field: 'reorderQuality', 'error')} required">
						<label for="reorderQuality" class="control-label"><g:message code="reagent.reorderQuality.label" default="Reorder Quality" /><span class="required-indicator">*</span></label>
						<div>
							<g:field class="form-control" name="reorderQuality" value="${fieldValue(bean: reagentInstance, field: 'reorderQuality')}" required=""/>
							<span class="help-inline">${hasErrors(bean: reagentInstance, field: 'reorderQuality', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: reagentInstance, field: 'expiryPolicy', 'error')} required">
						<label for="expiryPolicy" class="control-label"><g:message code="reagent.expiryPolicy.label" default="Expiry Policy" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="expiryPolicy" name="expiryPolicy.id" from="${reagent.ExpiryPolicy.list()}" optionKey="id" required="" value="${reagentInstance?.expiryPolicy?.id}"/>
							<span class="help-inline">${hasErrors(bean: reagentInstance, field: 'expiryPolicy', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: reagentInstance, field: 'storageTemperature', 'error')} required">
						<label for="storageTemperature" class="control-label"><g:message code="reagent.storageTemperature.label" default="Storage Temperature" /><span class="required-indicator">*</span></label>
						<div>
							<g:field class="form-control" name="storageTemperature" value="${fieldValue(bean: reagentInstance, field: 'storageTemperature')}" required=""/>
							<span class="help-inline">${hasErrors(bean: reagentInstance, field: 'storageTemperature', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: reagentInstance, field: 'coshhAssessment', 'error')} ">
						<label for="coshhAssessment" class="control-label"><g:message code="reagent.coshhAssessment.label" default="Coshh Assessment" /></label>
						<div>
							<g:textField class="form-control" name="coshhAssessment" value="${reagentInstance?.coshhAssessment}"/>
							<span class="help-inline">${hasErrors(bean: reagentInstance, field: 'coshhAssessment', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: reagentInstance, field: 'unit', 'error')} required">
						<label for="unit" class="control-label"><g:message code="reagent.unit.label" default="Unit" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="unit" name="unit.id" from="${reagent.UnitsOfMeasure.list()}" optionKey="id" required="" value="${reagentInstance?.unit?.id}" />
							<span class="help-inline">${hasErrors(bean: reagentInstance, field: 'unit', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: reagentInstance, field: 'notes', 'error')} ">
						<label for="notes" class="control-label"><g:message code="reagent.notes.label" default="Notes" /></label>
						<div>
							<g:textArea class="form-control" name="notes" cols="40" rows="5" value="${reagentInstance?.notes}"/>
							<span class="help-inline">${hasErrors(bean: reagentInstance, field: 'notes', 'error')}</span>
						</div>
					</div>
				</div>
			</div>