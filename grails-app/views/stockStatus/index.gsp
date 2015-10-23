
<%@ page import="reagent.StockStatus" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'stockStatus.label', default: 'Stock Status')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-stockStatus" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="stockStatusName" title="${message(code: 'stockStatus.stockStatusName.label', default: 'Stock Status Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${stockStatusInstanceList}" status="i" var="stockStatusInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${stockStatusInstance.id}">${fieldValue(bean: stockStatusInstance, field: "stockStatusName")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${stockStatusInstanceCount}" />
	</div>
</section>

</body>

</html>
