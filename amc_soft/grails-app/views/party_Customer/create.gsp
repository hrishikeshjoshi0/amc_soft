<%@ page import="com.amcsoft.model.party.Party_Customer" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="bootstrap" />
	<g:set var="entityName" value="${message(code: 'party_Customer.label', default: 'Party_Customer')}" />
	<title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>

<section id="create-party_Customer" class="first">

	<g:hasErrors bean="${party_CustomerInstance}">
	<div class="alert alert-error">
		<g:renderErrors bean="${party_CustomerInstance}" as="list" />
	</div>
	</g:hasErrors>

	<g:form action="save" class="form-horizontal">
		<div class="row">
			<div class="span6">
				<fieldset class="form">
					<g:render template="form" />
				</fieldset>
			</div>
			<div class="span6">
				<fieldset class="form">
					<g:render template="/address/form" />
				</fieldset>
			</div>
		</div>
		<div class="row">
			<div class="span12">
				<div class="form-actions">
					<g:submitButton name="create" class="btn btn-primary"
						value="${message(code: 'default.button.create.label', default: 'Create')}" />
					<button class="btn" type="reset">Cancel</button>
				</div>
			</div>
		</div>
	</g:form>
</section>
		
</body>

</html>
