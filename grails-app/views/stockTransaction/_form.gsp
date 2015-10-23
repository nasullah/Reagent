<%@ page import="reagent.StockTransaction" %>




			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'purchaseOrder', 'error')} required">
						<label for="purchaseOrder" class="control-label"><g:message code="stockTransaction.purchaseOrder.label" default="Purchase Order" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="purchaseOrder" name="purchaseOrder.id" from="${reagent.PurchaseOrder.list()}" optionKey="id" required="" value="${stockTransactionInstance?.purchaseOrder?.id}"/>
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'purchaseOrder', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'transactionDate', 'error')} required">
						<label for="transactionDate" class="control-label"><g:message code="stockTransaction.transactionDate.label" default="Transaction Date" /><span class="required-indicator">*</span></label>
						<div>
							<bs:datePicker name="transactionDate" precision="day"  value="${stockTransactionInstance?.transactionDate}"  />
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'transactionDate', 'error')}</span>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'transactionUser', 'error')} ">
						<label for="transactionUser" class="control-label"><g:message code="stockTransaction.transactionUser.label" default="Transaction User" /></label>
						<div>
							<g:textField class="form-control" name="transactionUser" value="${stockTransactionInstance?.transactionUser}"/>
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'transactionUser', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'direction', 'error')} required">
						<label for="direction" class="control-label"><g:message code="stockTransaction.direction.label" default="Direction" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="direction" name="direction.id" from="${reagent.Direction.list()}" optionKey="id" required="" value="${stockTransactionInstance?.direction?.id}"/>
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'direction', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'quantity', 'error')} required">
						<label for="quantity" class="control-label"><g:message code="stockTransaction.quantity.label" default="Quantity" /><span class="required-indicator">*</span></label>
						<div>
							<g:field class="form-control" name="quantity" value="${fieldValue(bean: stockTransactionInstance, field: 'quantity')}" required=""/>
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'quantity', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'type', 'error')} required">
						<label for="type" class="control-label"><g:message code="stockTransaction.type.label" default="Type" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="type" name="type.id" from="${reagent.MovementType.list()}" optionKey="id" required="" value="${stockTransactionInstance?.type?.id}"/>
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'type', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'batchIdentifier', 'error')} ">
						<label for="batchIdentifier" class="control-label"><g:message code="stockTransaction.batchIdentifier.label" default="Batch Identifier" /></label>
						<div>
							<g:textField class="form-control" name="batchIdentifier" value="${stockTransactionInstance?.batchIdentifier}"/>
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'batchIdentifier', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'itemIdentifier', 'error')} ">
						<label for="itemIdentifier" class="control-label"><g:message code="stockTransaction.itemIdentifier.label" default="Item Identifier" /></label>
						<div>
							<g:textField class="form-control" name="itemIdentifier" value="${stockTransactionInstance?.itemIdentifier}"/>
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'itemIdentifier', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'status', 'error')} required">
						<label for="status" class="control-label"><g:message code="stockTransaction.status.label" default="Status" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="status" name="status.id" from="${reagent.StockStatus.list()}" optionKey="id" required="" value="${stockTransactionInstance?.status?.id}"/>
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'status', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'dateOpened', 'error')} required">
						<label for="dateOpened" class="control-label"><g:message code="stockTransaction.dateOpened.label" default="Date Opened" /><span class="required-indicator">*</span></label>
						<div>
							<bs:datePicker name="dateOpened" precision="day"  value="${stockTransactionInstance?.dateOpened}"  />
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'dateOpened', 'error')}</span>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'expiryDate', 'error')} required">
						<label for="expiryDate" class="control-label"><g:message code="stockTransaction.expiryDate.label" default="Expiry Date" /><span class="required-indicator">*</span></label>
						<div>
							<bs:datePicker name="expiryDate" precision="day"  value="${stockTransactionInstance?.expiryDate}"  />
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'expiryDate', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'reagent', 'error')} required">
						<label for="reagent" class="control-label"><g:message code="stockTransaction.reagent.label" default="Reagent" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="reagent" name="reagent.id" from="${reagent.Reagent.list()}" optionKey="id" required="" value="${stockTransactionInstance?.reagent?.id}"/>
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'reagent', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: stockTransactionInstance, field: 'notes', 'error')} ">
						<label for="notes" class="control-label"><g:message code="stockTransaction.notes.label" default="Notes" /></label>
						<div>
							<g:textArea class="form-control" name="notes" cols="40" rows="5" value="${stockTransactionInstance?.notes}"/>
							<span class="help-inline">${hasErrors(bean: stockTransactionInstance, field: 'notes', 'error')}</span>
						</div>
					</div>
				</div>
			</div>


