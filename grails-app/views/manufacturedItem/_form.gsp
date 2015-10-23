<%@ page import="reagent.ManufacturedItem" %>



			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturedItemInstance, field: 'manufacturer', 'error')} required">
						<label for="manufacturer" class="control-label"><g:message code="manufacturedItem.manufacturer.label" default="Manufacturer" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="manufacturer" name="manufacturer.id" from="${reagent.Manufacturer.list()}" optionKey="id" required="" value="${manufacturedItemInstance?.manufacturer?.id}"/>
							<span class="help-inline">${hasErrors(bean: manufacturedItemInstance, field: 'manufacturer', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturedItemInstance, field: 'supplier', 'error')} required">
						<label for="supplier" class="control-label"><g:message code="manufacturedItem.supplier.label" default="Supplier" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="supplier" name="supplier.id" from="${reagent.Supplier.list()}" optionKey="id" required="" value="${manufacturedItemInstance?.supplier?.id}"/>
							<span class="help-inline">${hasErrors(bean: manufacturedItemInstance, field: 'supplier', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturedItemInstance, field: 'itemNumber', 'error')} ">
						<label for="itemNumber" class="control-label"><g:message code="manufacturedItem.itemNumber.label" default="Item Number" /></label>
						<div>
							<g:textField class="form-control" name="itemNumber" value="${manufacturedItemInstance?.itemNumber}"/>
							<span class="help-inline">${hasErrors(bean: manufacturedItemInstance, field: 'itemNumber', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturedItemInstance, field: 'itemName', 'error')} ">
						<label for="itemName" class="control-label"><g:message code="manufacturedItem.itemName.label" default="Item Name" /></label>
						<div>
							<g:textField class="form-control" name="itemName" value="${manufacturedItemInstance?.itemName}"/>
							<span class="help-inline">${hasErrors(bean: manufacturedItemInstance, field: 'itemName', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturedItemInstance, field: 'minimumOrderQuantity', 'error')} required">
						<label for="minimumOrderQuantity" class="control-label"><g:message code="manufacturedItem.minimumOrderQuantity.label" default="Minimum Order Quantity" /><span class="required-indicator">*</span></label>
						<div>
							<g:field class="form-control" name="minimumOrderQuantity" value="${fieldValue(bean: manufacturedItemInstance, field: 'minimumOrderQuantity')}" required=""/>
							<span class="help-inline">${hasErrors(bean: manufacturedItemInstance, field: 'minimumOrderQuantity', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturedItemInstance, field: 'cost', 'error')} required">
						<label for="cost" class="control-label"><g:message code="manufacturedItem.cost.label" default="Cost" /><span class="required-indicator">*</span></label>
						<div>
							<g:field class="form-control" name="cost" value="${fieldValue(bean: manufacturedItemInstance, field: 'cost')}" required=""/>
							<span class="help-inline">${hasErrors(bean: manufacturedItemInstance, field: 'cost', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturedItemInstance, field: 'deliveryTimDays', 'error')} required">
						<label for="deliveryTimDays" class="control-label"><g:message code="manufacturedItem.deliveryTimDays.label" default="Delivery Tim Days" /><span class="required-indicator">*</span></label>
						<div>
							<g:field class="form-control" name="deliveryTimDays" type="number" value="${manufacturedItemInstance.deliveryTimDays}" required=""/>
							<span class="help-inline">${hasErrors(bean: manufacturedItemInstance, field: 'deliveryTimDays', 'error')}</span>
						</div>
					</div>
				</div>
			</div>


