<%@ page import="reagent.PurchaseOrder" %>



			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: purchaseOrderInstance, field: 'supplier', 'error')} required">
						<label for="supplier" class="control-label"><g:message code="purchaseOrder.supplier.label" default="Supplier" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="supplier" name="supplier.id" from="${reagent.Supplier.list()}" optionKey="id" required="" value="${purchaseOrderInstance?.supplier?.id}"/>
							<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'supplier', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: purchaseOrderInstance, field: 'oraclePONumber', 'error')} ">
						<label for="oraclePONumber" class="control-label"><g:message code="purchaseOrder.oraclePONumber.label" default="Oracle PON umber" /></label>
						<div>
							<g:textField class="form-control" name="oraclePONumber" value="${purchaseOrderInstance?.oraclePONumber}"/>
							<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'oraclePONumber', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: purchaseOrderInstance, field: 'orderDate', 'error')} required">
						<label for="orderDate" class="control-label"><g:message code="purchaseOrder.orderDate.label" default="Order Date" /><span class="required-indicator">*</span></label>
						<div>
							<bs:datePicker name="orderDate" precision="day"  value="${purchaseOrderInstance?.orderDate}"  />
							<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'orderDate', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: purchaseOrderInstance, field: 'expectedDate', 'error')} required">
						<label for="expectedDate" class="control-label"><g:message code="purchaseOrder.expectedDate.label" default="Expected Date" /><span class="required-indicator">*</span></label>
						<div>
							<bs:datePicker name="expectedDate" precision="day"  value="${purchaseOrderInstance?.expectedDate}"  />
							<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'expectedDate', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: purchaseOrderInstance, field: 'orderStatus', 'error')} required">
						<label for="orderStatus" class="control-label"><g:message code="purchaseOrder.orderStatus.label" default="Order Status" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="orderStatus" name="orderStatus.id" from="${reagent.POStatus.list()}" optionKey="id" required="" value="${purchaseOrderInstance?.orderStatus?.id}"/>
							<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'orderStatus', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: purchaseOrderInstance, field: 'orderedBy', 'error')} ">
						<label for="orderedBy" class="control-label"><g:message code="purchaseOrder.orderedBy.label" default="Ordered By" /></label>
						<div>
							<g:textField class="form-control" name="orderedBy" value="${purchaseOrderInstance?.orderedBy}"/>
							<span class="help-inline">${hasErrors(bean: purchaseOrderInstance, field: 'orderedBy', 'error')}</span>
						</div>
					</div>
				</div>
			</div>

