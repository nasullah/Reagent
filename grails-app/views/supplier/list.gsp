
<%@ page import="reagent.Supplier" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'supplier.label', default: 'Supplier')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>

<section id="list-supplier" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="name" title="${message(code: 'supplier.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="web" title="${message(code: 'supplier.web.label', default: 'Web')}" />
			
				<g:sortableColumn property="approvalReport" title="${message(code: 'supplier.approvalReport.label', default: 'Approval Report')}" />
			
				<g:sortableColumn property="approvedOn" title="${message(code: 'supplier.approvedOn.label', default: 'Approved On')}" />
			
				<g:sortableColumn property="approvalExpiresOn" title="${message(code: 'supplier.approvalExpiresOn.label', default: 'Approval Expires On')}" />
			
				<g:sortableColumn property="accountNumber" title="${message(code: 'supplier.accountNumber.label', default: 'Account Number')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${supplierInstanceList}" status="i" var="supplierInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${supplierInstance.id}">${fieldValue(bean: supplierInstance, field: "name")}</g:link></td>
			
				<td>${fieldValue(bean: supplierInstance, field: "web")}</td>
			
				<td>${fieldValue(bean: supplierInstance, field: "approvalReport")}</td>
			
				<td><g:formatDate date="${supplierInstance.approvedOn}" /></td>
			
				<td><g:formatDate date="${supplierInstance.approvalExpiresOn}" /></td>
			
				<td>${fieldValue(bean: supplierInstance, field: "accountNumber")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${supplierInstanceCount}" />
	</div>
</section>

</body>

</html>
