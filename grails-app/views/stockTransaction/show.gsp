
<%@ page import="reagent.StockTransaction" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'stockTransaction.label', default: 'Stock Transaction')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-stockTransaction" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.purchaseOrder.label" default="Purchase Order" /></td>
				
				<td valign="top" class="value"><g:link controller="purchaseOrder" action="show" id="${stockTransactionInstance?.purchaseOrder?.id}">${stockTransactionInstance?.purchaseOrder?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.transactionDate.label" default="Transaction Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${stockTransactionInstance?.transactionDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.transactionUser.label" default="Transaction User" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: stockTransactionInstance, field: "transactionUser")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.direction.label" default="Direction" /></td>
				
				<td valign="top" class="value"><g:link controller="direction" action="show" id="${stockTransactionInstance?.direction?.id}">${stockTransactionInstance?.direction?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.quantity.label" default="Quantity" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: stockTransactionInstance, field: "quantity")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.type.label" default="Type" /></td>
				
				<td valign="top" class="value"><g:link controller="movementType" action="show" id="${stockTransactionInstance?.type?.id}">${stockTransactionInstance?.type?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.batchIdentifier.label" default="Batch Identifier" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: stockTransactionInstance, field: "batchIdentifier")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.itemIdentifier.label" default="Item Identifier" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: stockTransactionInstance, field: "itemIdentifier")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.status.label" default="Status" /></td>
				
				<td valign="top" class="value"><g:link controller="stockStatus" action="show" id="${stockTransactionInstance?.status?.id}">${stockTransactionInstance?.status?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.dateOpened.label" default="Date Opened" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${stockTransactionInstance?.dateOpened}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.expiryDate.label" default="Expiry Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${stockTransactionInstance?.expiryDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.notes.label" default="Notes" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: stockTransactionInstance, field: "notes")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockTransaction.reagent.label" default="Reagent" /></td>
				
				<td valign="top" class="value"><g:link controller="reagent" action="show" id="${stockTransactionInstance?.reagent?.id}">${stockTransactionInstance?.reagent?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
