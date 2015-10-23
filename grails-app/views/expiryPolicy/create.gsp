<%@ page import="reagent.ExpiryPolicy" %>
<!DOCTYPE html>
<html>

<head>
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'expiryPolicy.label', default: 'Expiry Policy')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

	<section id="create-expiryPolicy" class="first">

		<g:hasErrors bean="${expiryPolicyInstance}">
		<div class="alert alert-danger">
			<g:renderErrors bean="${expiryPolicyInstance}" as="list" />
		</div>
		</g:hasErrors>

		<g:form action="save" class="form-horizontal" role="form" >
			<g:render template="form"/>

			<div class="form-actions margin-top-medium">
				<g:submitButton name="create" class="btn btn-primary" value="Save" />
	            <button class="btn" type="reset"><g:message code="default.button.reset.label" default="Reset" /></button>
			</div>
		</g:form>

	</section>

<hr/>

</body>

</html>
