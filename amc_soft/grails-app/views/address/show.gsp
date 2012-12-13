
<%@ page import="com.amcsoft.model.party.Address" %>
<!doctype html>
<html>

<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
	<title><g:message code="default.show.label" args="[entityName]" /></title>
</head>

<body>

<section id="show-address" class="first">

	<table class="table">
		<tbody>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.addressBookId.label" default="Address Book Id" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "addressBookId")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.address1.label" default="Address1" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "address1")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.address2.label" default="Address2" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "address2")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.attnName.label" default="Attn Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "attnName")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.city.label" default="City" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "city")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.country.label" default="Country" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "country")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.directions.label" default="Directions" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "directions")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.postalCode.label" default="Postal Code" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "postalCode")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.postalCodeExt.label" default="Postal Code Ext" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "postalCodeExt")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.stateProvince.label" default="State Province" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "stateProvince")}</td>
				
			</tr>
		
			<tr class="prop">
				<td valign="top" class="name"><g:message code="address.toName.label" default="To Name" /></td>
				
				<td valign="top" class="value">${fieldValue(bean: addressInstance, field: "toName")}</td>
				
			</tr>
		
		</tbody>
	</table>
</section>

</body>

</html>
