<%@ page import="reagent.Supplier" %>



			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: supplierInstance, field: 'name', 'error')} ">
						<label for="name" class="control-label"><g:message code="supplier.name.label" default="Name" /></label>
						<div>
							<g:textField class="form-control" name="name" value="${supplierInstance?.name}"/>
							<span class="help-inline">${hasErrors(bean: supplierInstance, field: 'name', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: supplierInstance, field: 'web', 'error')} ">
						<label for="web" class="control-label"><g:message code="supplier.web.label" default="Web" /></label>
						<div>
							<g:textField class="form-control" name="web" value="${supplierInstance?.web}"/>
							<span class="help-inline">${hasErrors(bean: supplierInstance, field: 'web', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: supplierInstance, field: 'approvedOn', 'error')} required">
						<label for="approvedOn" class="control-label"><g:message code="supplier.approvedOn.label" default="Approved On" /><span class="required-indicator">*</span></label>
						<div>
							<bs:datePicker name="approvedOn" precision="day"  value="${supplierInstance?.approvedOn}"  />
							<span class="help-inline">${hasErrors(bean: supplierInstance, field: 'approvedOn', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: supplierInstance, field: 'approvalReport', 'error')} ">
						<label for="approvalReport" class="control-label"><g:message code="supplier.approvalReport.label" default="Approval Report" /></label>
						<div>
							<g:textField class="form-control" name="approvalReport" value="${supplierInstance?.approvalReport}"/>
							<span class="help-inline">${hasErrors(bean: supplierInstance, field: 'approvalReport', 'error')}</span>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: supplierInstance, field: 'approvalExpiresOn', 'error')} required">
						<label for="approvalExpiresOn" class="control-label"><g:message code="supplier.approvalExpiresOn.label" default="Approval Expires On" /><span class="required-indicator">*</span></label>
						<div>
							<bs:datePicker name="approvalExpiresOn" precision="day"  value="${supplierInstance?.approvalExpiresOn}"  />
							<span class="help-inline">${hasErrors(bean: supplierInstance, field: 'approvalExpiresOn', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: supplierInstance, field: 'accountNumber', 'error')} ">
						<label for="accountNumber" class="control-label"><g:message code="supplier.accountNumber.label" default="Account Number" /></label>
						<div>
							<g:textField class="form-control" name="accountNumber" value="${supplierInstance?.accountNumber}"/>
							<span class="help-inline">${hasErrors(bean: supplierInstance, field: 'accountNumber', 'error')}</span>
						</div>
					</div>
				</div>
			</div>

			%{--<div class="${hasErrors(bean: supplierInstance, field: 'contact', 'error')} ">--}%
				%{--<label for="contact" class="control-label"><g:message code="supplier.contact.label" default="Contact" /></label>--}%
				%{--<div>--}%
					%{----}%
%{--<ul class="one-to-many">--}%
%{--<g:each in="${supplierInstance?.contact?}" var="c">--}%
    %{--<li><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>--}%
%{--</g:each>--}%
%{--<li class="add">--}%
%{--<g:link controller="contact" action="create" params="['supplier.id': supplierInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contact.label', default: 'Contact')])}</g:link>--}%
%{--</li>--}%
%{--</ul>--}%

					%{--<span class="help-inline">${hasErrors(bean: supplierInstance, field: 'contact', 'error')}</span>--}%
				%{--</div>--}%
			%{--</div>--}%

