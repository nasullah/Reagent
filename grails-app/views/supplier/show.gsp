
<%@ page import="reagent.Supplier" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-supplier" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="supplier.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: supplierInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="supplier.web.label" default="Web" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: supplierInstance, field: "web")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="supplier.approvalReport.label" default="Approval Report" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: supplierInstance, field: "approvalReport")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="supplier.approvedOn.label" default="Approved On" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${supplierInstance?.approvedOn}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="supplier.approvalExpiresOn.label" default="Approval Expires On" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${supplierInstance?.approvalExpiresOn}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="supplier.accountNumber.label" default="Account Number" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: supplierInstance, field: "accountNumber")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="supplier.contact.label" default="Contact" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${supplierInstance.contact}" var="c">
						<li><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
