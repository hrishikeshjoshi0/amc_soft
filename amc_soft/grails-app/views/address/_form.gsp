<%@ page import="com.amcsoft.model.party.Address" %>

			<div class="control-group fieldcontain ${hasErrors(bean: addressInstance, field: 'address1', 'error')} ">
				<label for="address1" class="control-label"><g:message code="address.address1.label" default="Address1" /></label>
				<div class="controls">
					<g:textField name="address1" value="${addressInstance?.address1}" />
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'address1', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: addressInstance, field: 'address2', 'error')} ">
				<label for="address2" class="control-label"><g:message code="address.address2.label" default="Address2" /></label>
				<div class="controls">
					<g:textField name="address2" value="${addressInstance?.address2}" />
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'address2', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} ">
				<label for="city" class="control-label"><g:message code="address.city.label" default="City" /></label>
				<div class="controls">
					<g:textField name="city" value="${addressInstance?.city}" />
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'city', 'error')}</span>
				</div>
			</div>
			
			<div class="control-group fieldcontain ${hasErrors(bean: addressInstance, field: 'stateProvince', 'error')} ">
				<label for="stateProvince" class="control-label"><g:message code="address.stateProvince.label" default="State Province" /></label>
				<div class="controls">
					<g:textField name="stateProvince" value="${addressInstance?.stateProvince}" />
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'stateProvince', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: addressInstance, field: 'country', 'error')} ">
				<label for="country" class="control-label"><g:message code="address.country.label" default="Country" /></label>
				<div class="controls">
					<g:textField name="country" value="${addressInstance?.country}" />
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'country', 'error')}</span>
				</div>
			</div>
			
			<div class="control-group fieldcontain ${hasErrors(bean: addressInstance, field: 'postalCode', 'error')} ">
				<label for="postalCode" class="control-label"><g:message code="address.postalCode.label" default="Postal Code" /></label>
				<div class="controls">
					<g:textField name="postalCode" value="${addressInstance?.postalCode}" />
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'postalCode', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: addressInstance, field: 'directions', 'error')} ">
				<label for="directions" class="control-label"><g:message code="address.directions.label" default="Directions" /></label>
				<div class="controls">
					<g:textField name="directions" value="${addressInstance?.directions}" />
					<span class="help-inline">${hasErrors(bean: addressInstance, field: 'directions', 'error')}</span>
				</div>
			</div>	