
<%@ page import="reagent.StockStatus" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'stockStatus.label', default: 'Stock Status')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-stockStatus" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="stockStatus.stockStatusName.label" default="Stock Status Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: stockStatusInstance, field: "stockStatusName")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
