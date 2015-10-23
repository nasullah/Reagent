
<%@ page import="reagent.Location" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-location" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="identifier" title="${message(code: 'location.identifier.label', default: 'Identifier')}" />
			
				<g:sortableColumn property="description" title="${message(code: 'location.description.label', default: 'Description')}" />
			
				<g:sortableColumn property="notes" title="${message(code: 'location.notes.label', default: 'Notes')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${locationInstanceList}" status="i" var="locationInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${locationInstance.id}">${fieldValue(bean: locationInstance, field: "identifier")}</g:link></td>
			
				<td>${fieldValue(bean: locationInstance, field: "description")}</td>
			
				<td>${fieldValue(bean: locationInstance, field: "notes")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${locationInstanceCount}" />
	</div>
</section>

</body>

</html>
