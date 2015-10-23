
<%@ page import="reagent.PurchaseOrder" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'purchaseOrder.label', default: 'Purchase Order')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-purchaseOrder" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<th><g:message code="purchaseOrder.supplier.label" default="Supplier" /></th>
			
				<g:sortableColumn property="oraclePONumber" title="${message(code: 'purchaseOrder.oraclePONumber.label', default: 'Oracle PON umber')}" />
			
				<g:sortableColumn property="orderDate" title="${message(code: 'purchaseOrder.orderDate.label', default: 'Order Date')}" />
			
				<g:sortableColumn property="expectedDate" title="${message(code: 'purchaseOrder.expectedDate.label', default: 'Expected Date')}" />
			
				<th><g:message code="purchaseOrder.orderStatus.label" default="Order Status" /></th>
			
				<g:sortableColumn property="orderedBy" title="${message(code: 'purchaseOrder.orderedBy.label', default: 'Ordered By')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${purchaseOrderInstanceList}" status="i" var="purchaseOrderInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${purchaseOrderInstance.id}">${fieldValue(bean: purchaseOrderInstance, field: "supplier")}</g:link></td>
			
				<td>${fieldValue(bean: purchaseOrderInstance, field: "oraclePONumber")}</td>
			
				<td><g:formatDate date="${purchaseOrderInstance.orderDate}" /></td>
			
				<td><g:formatDate date="${purchaseOrderInstance.expectedDate}" /></td>
			
				<td>${fieldValue(bean: purchaseOrderInstance, field: "orderStatus")}</td>
			
				<td>${fieldValue(bean: purchaseOrderInstance, field: "orderedBy")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${purchaseOrderInstanceCount}" />
	</div>
</section>

</body>

</html>
