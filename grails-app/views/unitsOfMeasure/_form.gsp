<%@ page import="reagent.UnitsOfMeasure" %>



		<div class="row">
			<div class="col-lg-6">
				<div class="${hasErrors(bean: unitsOfMeasureInstance, field: 'units', 'error')} ">
					<label for="units" class="control-label"><g:message code="unitsOfMeasure.units.label" default="Units" /></label>
					<div>
						<g:textField class="form-control" name="units" value="${unitsOfMeasureInstance?.units}"/>
						<span class="help-inline">${hasErrors(bean: unitsOfMeasureInstance, field: 'units', 'error')}</span>
					</div>
				</div>
			</div>
		</div>
