
<%@ page import="reagent.Location" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'location.label', default: 'Location')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-location" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="location.identifier.label" default="Identifier" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: locationInstance, field: "identifier")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="location.description.label" default="Description" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: locationInstance, field: "description")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="location.notes.label" default="Notes" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: locationInstance, field: "notes")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
