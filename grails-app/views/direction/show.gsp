
<%@ page import="reagent.Direction" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'direction.label', default: 'Direction')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-direction" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="direction.directionName.label" default="Direction Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: directionInstance, field: "directionName")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
