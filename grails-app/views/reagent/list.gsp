
<%@ page import="reagent.Reagent" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'reagent.label', default: 'Reagent')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-reagent" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="identifier" title="${message(code: 'reagent.identifier.label', default: 'Identifier')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'reagent.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="minimumStock" title="${message(code: 'reagent.minimumStock.label', default: 'Minimum Stock')}" />
			
				<g:sortableColumn property="maximumStock" title="${message(code: 'reagent.maximumStock.label', default: 'Maximum Stock')}" />
			
				<g:sortableColumn property="reorderQuality" title="${message(code: 'reagent.reorderQuality.label', default: 'Reorder Quality')}" />
			
				<th><g:message code="reagent.expiryPolicy.label" default="Expiry Policy" /></th>
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${reagentInstanceList}" status="i" var="reagentInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${reagentInstance.id}">${fieldValue(bean: reagentInstance, field: "identifier")}</g:link></td>
			
				<td>${fieldValue(bean: reagentInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: reagentInstance, field: "minimumStock")}</td>
			
				<td>${fieldValue(bean: reagentInstance, field: "maximumStock")}</td>
			
				<td>${fieldValue(bean: reagentInstance, field: "reorderQuality")}</td>
			
				<td>${fieldValue(bean: reagentInstance, field: "expiryPolicy")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${reagentInstanceCount}" />
	</div>
</section>

</body>

</html>
