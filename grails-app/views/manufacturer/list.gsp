
<%@ page import="reagent.Manufacturer" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'manufacturer.label', default: 'Manufacturer')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-manufacturer" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'manufacturer.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="web" title="${message(code: 'manufacturer.web.label', default: 'Web')}" />
			
				<g:sortableColumn property="approvalReport" title="${message(code: 'manufacturer.approvalReport.label', default: 'Approval Report')}" />
			
				<g:sortableColumn property="approvedOn" title="${message(code: 'manufacturer.approvedOn.label', default: 'Approved On')}" />
			
				<g:sortableColumn property="approvalExpiresOn" title="${message(code: 'manufacturer.approvalExpiresOn.label', default: 'Approval Expires On')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${manufacturerInstanceList}" status="i" var="manufacturerInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${manufacturerInstance.id}">${fieldValue(bean: manufacturerInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: manufacturerInstance, field: "web")}</td>
			
				<td>${fieldValue(bean: manufacturerInstance, field: "approvalReport")}</td>
			
				<td><g:formatDate date="${manufacturerInstance.approvedOn}" /></td>
			
				<td><g:formatDate date="${manufacturerInstance.approvalExpiresOn}" /></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${manufacturerInstanceCount}" />
	</div>
</section>

</body>

</html>
