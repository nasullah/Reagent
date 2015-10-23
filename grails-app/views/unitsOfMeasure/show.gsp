
<%@ page import="reagent.UnitsOfMeasure" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'unitsOfMeasure.label', default: 'Units of Measure')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-unitsOfMeasure" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="unitsOfMeasure.units.label" default="Units" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: unitsOfMeasureInstance, field: "units")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
