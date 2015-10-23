
<%@ page import="reagent.UnitsOfMeasure" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'unitsOfMeasure.label', default: 'Units of Measure')}" />
	<title><g:message code="default.index.label" args="[entityName]" /></title>
</head>

<body>

<section id="index-unitsOfMeasure" class="first">

	<table class="table table-bordered margin-top-medium">
		<thead>
			<tr>
			
				<g:sortableColumn property="units" title="${message(code: 'unitsOfMeasure.units.label', default: 'Units')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${unitsOfMeasureInstanceList}" status="i" var="unitsOfMeasureInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${unitsOfMeasureInstance.id}">${fieldValue(bean: unitsOfMeasureInstance, field: "units")}</g:link></td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div>
		<bs:paginate total="${unitsOfMeasureInstanceCount}" />
	</div>
</section>

</body>

</html>
