
<%@ page import="reagent.Reagent" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'reagent.label', default: 'Reagent')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-reagent" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.identifier.label" default="Identifier" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: reagentInstance, field: "identifier")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.name.label" default="Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: reagentInstance, field: "name")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.minimumStock.label" default="Minimum Stock" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: reagentInstance, field: "minimumStock")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.maximumStock.label" default="Maximum Stock" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: reagentInstance, field: "maximumStock")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.reorderQuality.label" default="Reorder Quality" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: reagentInstance, field: "reorderQuality")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.expiryPolicy.label" default="Expiry Policy" /></td>
				
				<td valign="top" class="value"><g:link controller="expiryPolicy" action="show" id="${reagentInstance?.expiryPolicy?.id}">${reagentInstance?.expiryPolicy?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.storageTemperature.label" default="Storage Temperature" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: reagentInstance, field: "storageTemperature")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.coshhAssessment.label" default="Coshh Assessment" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: reagentInstance, field: "coshhAssessment")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.notes.label" default="Notes" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: reagentInstance, field: "notes")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.unit.label" default="Unit" /></td>
				
				<td valign="top" class="value"><g:link controller="unitsOfMeasure" action="show" id="${reagentInstance?.unit?.id}">${reagentInstance?.unit?.encodeAsHTML()}</g:link></td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.itemApprovals.label" default="Item Approvals" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${reagentInstance.itemApprovals}" var="i">
						<li><g:link controller="itemApproval" action="show" id="${i.id}">${i?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="reagent.stockTransactions.label" default="Stock Transactions" /></td>
				
				<td valign="top" style="text-align: left;" class="value">
					<ul>
					<g:each in="${reagentInstance.stockTransactions}" var="s">
						<li><g:link controller="stockTransaction" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
					</g:each>
					</ul>
				</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
