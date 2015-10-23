
<%@ page import="reagent.MovementType" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'movementType.label', default: 'Movement Type')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-movementType" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="movementTypeName" title="${message(code: 'movementType.movementTypeName.label', default: 'Movement Type Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${movementTypeInstanceList}" status="i" var="movementTypeInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${movementTypeInstance.id}">${fieldValue(bean: movementTypeInstance, field: "movementTypeName")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${movementTypeInstanceCount}" />
	</div>
</section>

</body>

</html>
