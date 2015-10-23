
<%@ page import="reagent.POStatus" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'POStatus.label', default: 'PO Status')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-POStatus" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="pOStatusName" title="${message(code: 'POStatus.pOStatusName.label', default: 'PO Status Name')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${POStatusInstanceList}" status="i" var="POStatusInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${POStatusInstance.id}">${fieldValue(bean: POStatusInstance, field: "pOStatusName")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${POStatusInstanceCount}" />
	</div>
</section>

</body>

</html>
