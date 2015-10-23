
<%@ page import="reagent.ManufacturedItem" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'manufacturedItem.label', default: 'Manufactured Item')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-manufacturedItem" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturedItem.manufacturer.label" default="Manufacturer" /></td>
				
				<td valign="top" class="value"><g:link controller="manufacturer" action="show" id="${manufacturedItemInstance?.manufacturer?.id}">${manufacturedItemInstance?.manufacturer?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturedItem.supplier.label" default="Supplier" /></td>
				
				<td valign="top" class="value"><g:link controller="supplier" action="show" id="${manufacturedItemInstance?.supplier?.id}">${manufacturedItemInstance?.supplier?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturedItem.itemApproval.label" default="Item Approval" /></td>
				
				<td valign="top" class="value"><g:link controller="itemApproval" action="show" id="${manufacturedItemInstance?.itemApproval?.id}">${manufacturedItemInstance?.itemApproval?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturedItem.itemNumber.label" default="Item Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: manufacturedItemInstance, field: "itemNumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturedItem.itemName.label" default="Item Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: manufacturedItemInstance, field: "itemName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturedItem.minimumOrderQuantity.label" default="Minimum Order Quantity" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: manufacturedItemInstance, field: "minimumOrderQuantity")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturedItem.cost.label" default="Cost" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: manufacturedItemInstance, field: "cost")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturedItem.deliveryTimDays.label" default="Delivery Tim Days" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: manufacturedItemInstance, field: "deliveryTimDays")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
