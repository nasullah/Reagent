
<%@ page import="reagent.PurchaseOrder" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'purchaseOrder.label', default: 'Purchase Order')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-purchaseOrder" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="purchaseOrder.supplier.label" default="Supplier" /></td>
				
				<td valign="top" class="value"><g:link controller="supplier" action="show" id="${purchaseOrderInstance?.supplier?.id}">${purchaseOrderInstance?.supplier?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="purchaseOrder.oraclePONumber.label" default="Oracle PON umber" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: purchaseOrderInstance, field: "oraclePONumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="purchaseOrder.orderDate.label" default="Order Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${purchaseOrderInstance?.orderDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="purchaseOrder.expectedDate.label" default="Expected Date" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${purchaseOrderInstance?.expectedDate}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="purchaseOrder.orderStatus.label" default="Order Status" /></td>
				
				<td valign="top" class="value"><g:link controller="POStatus" action="show" id="${purchaseOrderInstance?.orderStatus?.id}">${purchaseOrderInstance?.orderStatus?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="purchaseOrder.orderedBy.label" default="Ordered By" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: purchaseOrderInstance, field: "orderedBy")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
