
<%@ page import="reagent.Manufacturer" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'manufacturer.label', default: 'Manufacturer')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-manufacturer" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturer.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: manufacturerInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturer.web.label" default="Web" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: manufacturerInstance, field: "web")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturer.approvalReport.label" default="Approval Report" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: manufacturerInstance, field: "approvalReport")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturer.approvedOn.label" default="Approved On" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${manufacturerInstance?.approvedOn}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturer.approvalExpiresOn.label" default="Approval Expires On" /></td>
				
				<td valign="top" class="value"><g:formatDate date="${manufacturerInstance?.approvalExpiresOn}" /></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="manufacturer.contact.label" default="Contact" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${manufacturerInstance.contact}" var="c">
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
