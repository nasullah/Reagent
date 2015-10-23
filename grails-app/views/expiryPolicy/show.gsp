
<%@ page import="reagent.ExpiryPolicy" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'expiryPolicy.label', default: 'Expiry Policy')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-expiryPolicy" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="expiryPolicy.expiryPolicyName.label" default="Expiry Policy Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: expiryPolicyInstance, field: "expiryPolicyName")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
