
<%@ page import="reagent.ItemApproval" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'itemApproval.label', default: 'Item Approval')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-itemApproval" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<th><g:message code="itemApproval.reagent.label" default="Reagent" /></th>
			
				<g:sortableColumn property="approvedOn" title="${message(code: 'itemApproval.approvedOn.label', default: 'Approved On')}" />
			
				<g:sortableColumn property="approvalExpiresOn" title="${message(code: 'itemApproval.approvalExpiresOn.label', default: 'Approval Expires On')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${itemApprovalInstanceList}" status="i" var="itemApprovalInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${itemApprovalInstance.id}">${fieldValue(bean: itemApprovalInstance, field: "reagent")}</g:link></td>
			
				<td><g:formatDate date="${itemApprovalInstance.approvedOn}" /></td>
			
				<td><g:formatDate date="${itemApprovalInstance.approvalExpiresOn}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${itemApprovalInstanceCount}" />
	</div>
</section>

</body>

</html>
