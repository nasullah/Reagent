
<%@ page import="reagent.StockTransaction" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'stockTransaction.label', default: 'Stock Transaction')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-stockTransaction" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<th><g:message code="stockTransaction.purchaseOrder.label" default="Purchase Order" /></th>
			
				<g:sortableColumn property="transactionDate" title="${message(code: 'stockTransaction.transactionDate.label', default: 'Transaction Date')}" />
			
				<g:sortableColumn property="transactionUser" title="${message(code: 'stockTransaction.transactionUser.label', default: 'Transaction User')}" />
			
				<th><g:message code="stockTransaction.direction.label" default="Direction" /></th>
			
				<g:sortableColumn property="quantity" title="${message(code: 'stockTransaction.quantity.label', default: 'Quantity')}" />
			
				<th><g:message code="stockTransaction.type.label" default="Type" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${stockTransactionInstanceList}" status="i" var="stockTransactionInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${stockTransactionInstance.id}">${fieldValue(bean: stockTransactionInstance, field: "purchaseOrder")}</g:link></td>
			
				<td><g:formatDate date="${stockTransactionInstance.transactionDate}" /></td>
			
				<td>${fieldValue(bean: stockTransactionInstance, field: "transactionUser")}</td>
			
				<td>${fieldValue(bean: stockTransactionInstance, field: "direction")}</td>
			
				<td>${fieldValue(bean: stockTransactionInstance, field: "quantity")}</td>
			
				<td>${fieldValue(bean: stockTransactionInstance, field: "type")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${stockTransactionInstanceCount}" />
	</div>
</section>

</body>

</html>
