
<%@ page import="reagent.POStatus" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'POStatus.label', default: 'PO Status')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-POStatus" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="POStatus.pOStatusName.label" default="PO Status Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: POStatusInstance, field: "pOStatusName")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
