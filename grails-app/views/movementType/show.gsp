
<%@ page import="reagent.MovementType" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'movementType.label', default: 'Movement Type')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-movementType" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="movementType.movementTypeName.label" default="Movement Type Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: movementTypeInstance, field: "movementTypeName")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
