
<%@ page import="reagent.ItemApproval" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'itemApproval.label', default: 'Item Approval')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-itemApproval" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemApproval.reagent.label" default="Reagent" /></td>
				
				<td valign="top" class="value"><g:link controller="reagent" action="show" id="${itemApprovalInstance?.reagent?.id}">${itemApprovalInstance?.reagent?.encodeAsHTML()}</g:link></td>
				
			</tr>

			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemApproval.manufacturedItem.label" default="Manufactured Item" /></td>

				<td valign="top" class="value"><g:link controller="manufacturedItem" action="show" id="${itemApprovalInstance?.manufacturedItem?.id}">${itemApprovalInstance?.manufacturedItem?.encodeAsHTML()}</g:link></td>

			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemApproval.approvedOn.label" default="Approved On" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${itemApprovalInstance?.approvedOn}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemApproval.approvalExpiresOn.label" default="Approval Expires On" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${itemApprovalInstance?.approvalExpiresOn}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="itemApproval.approvalReport.label" default="Approval Report" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: itemApprovalInstance, field: "approvalReport")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
