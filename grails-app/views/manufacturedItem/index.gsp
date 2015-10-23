
<%@ page import="reagent.ManufacturedItem" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'manufacturedItem.label', default: 'Manufactured Item')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-manufacturedItem" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<th><g:message code="manufacturedItem.manufacturer.label" default="Manufacturer" /></th>
			
				<th><g:message code="manufacturedItem.supplier.label" default="Supplier" /></th>
			
				<th><g:message code="manufacturedItem.itemApproval.label" default="Item Approval" /></th>
			
				<g:sortableColumn property="itemNumber" title="${message(code: 'manufacturedItem.itemNumber.label', default: 'Item Number')}" />
			
				<g:sortableColumn property="itemName" title="${message(code: 'manufacturedItem.itemName.label', default: 'Item Name')}" />
			
				<g:sortableColumn property="minimumOrderQuantity" title="${message(code: 'manufacturedItem.minimumOrderQuantity.label', default: 'Minimum Order Quantity')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${manufacturedItemInstanceList}" status="i" var="manufacturedItemInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${manufacturedItemInstance.id}">${fieldValue(bean: manufacturedItemInstance, field: "manufacturer")}</g:link></td>
			
				<td>${fieldValue(bean: manufacturedItemInstance, field: "supplier")}</td>
			
				<td>${fieldValue(bean: manufacturedItemInstance, field: "itemApproval")}</td>
			
				<td>${fieldValue(bean: manufacturedItemInstance, field: "itemNumber")}</td>
			
				<td>${fieldValue(bean: manufacturedItemInstance, field: "itemName")}</td>
			
				<td>${fieldValue(bean: manufacturedItemInstance, field: "minimumOrderQuantity")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${manufacturedItemInstanceCount}" />
	</div>
</section>

</body>

</html>
