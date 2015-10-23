<%@ page import="reagent.StockStatus" %>



			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockStatusInstance, field: 'stockStatusName', 'error')} ">
						<label for="stockStatusName" class="control-label"><g:message code="stockStatus.stockStatusName.label" default="Stock Status Name" /></label>
						<div>
							<g:textField class="form-control" name="stockStatusName" value="${stockStatusInstance?.stockStatusName}"/>
							<span class="help-inline">${hasErrors(bean: stockStatusInstance, field: 'stockStatusName', 'error')}</span>
						</div>
					</div>
				</div>
			</div>
