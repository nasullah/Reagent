
<%@ page import="reagent.ExpiryPolicy" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'expiryPolicy.label', default: 'Expiry Policy')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-expiryPolicy" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="expiryPolicyName" title="${message(code: 'expiryPolicy.expiryPolicyName.label', default: 'Expiry Policy Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${expiryPolicyInstanceList}" status="i" var="expiryPolicyInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${expiryPolicyInstance.id}">${fieldValue(bean: expiryPolicyInstance, field: "expiryPolicyName")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${expiryPolicyInstanceCount}" />
	</div>
</section>

</body>

</html>
