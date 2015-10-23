
<%@ page import="reagent.Direction" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'direction.label', default: 'Direction')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-direction" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="directionName" title="${message(code: 'direction.directionName.label', default: 'Direction Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${directionInstanceList}" status="i" var="directionInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${directionInstance.id}">${fieldValue(bean: directionInstance, field: "directionName")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${directionInstanceCount}" />
	</div>
</section>

</body>

</html>
