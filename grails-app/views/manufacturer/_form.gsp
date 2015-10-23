<%@ page import="reagent.Manufacturer" %>



			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturerInstance, field: 'name', 'error')} ">
						<label for="name" class="control-label"><g:message code="manufacturer.name.label" default="Name" /></label>
						<div>
							<g:textField class="form-control" name="name" value="${manufacturerInstance?.name}"/>
							<span class="help-inline">${hasErrors(bean: manufacturerInstance, field: 'name', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturerInstance, field: 'web', 'error')} ">
						<label for="web" class="control-label"><g:message code="manufacturer.web.label" default="Web" /></label>
						<div>
							<g:textField class="form-control" name="web" value="${manufacturerInstance?.web}"/>
							<span class="help-inline">${hasErrors(bean: manufacturerInstance, field: 'web', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturerInstance, field: 'approvedOn', 'error')} required">
						<label for="approvedOn" class="control-label"><g:message code="manufacturer.approvedOn.label" default="Approved On" /><span class="required-indicator">*</span></label>
						<div>
							<bs:datePicker name="approvedOn" precision="day"  value="${manufacturerInstance?.approvedOn}"  />
							<span class="help-inline">${hasErrors(bean: manufacturerInstance, field: 'approvedOn', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturerInstance, field: 'approvalExpiresOn', 'error')} required">
						<label for="approvalExpiresOn" class="control-label"><g:message code="manufacturer.approvalExpiresOn.label" default="Approval Expires On" /><span class="required-indicator">*</span></label>
						<div>
							<bs:datePicker name="approvalExpiresOn" precision="day"  value="${manufacturerInstance?.approvalExpiresOn}"  />
							<span class="help-inline">${hasErrors(bean: manufacturerInstance, field: 'approvalExpiresOn', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: manufacturerInstance, field: 'approvalReport', 'error')} ">
						<label for="approvalReport" class="control-label"><g:message code="manufacturer.approvalReport.label" default="Approval Report" /></label>
						<div>
							<g:textField class="form-control" name="approvalReport" value="${manufacturerInstance?.approvalReport}"/>
							<span class="help-inline">${hasErrors(bean: manufacturerInstance, field: 'approvalReport', 'error')}</span>
						</div>
					</div>
				</div>
			</div>

			%{--<div class="${hasErrors(bean: manufacturerInstance, field: 'contact', 'error')} ">--}%
				%{--<label for="contact" class="control-label"><g:message code="manufacturer.contact.label" default="Contact" /></label>--}%
				%{--<div>--}%
					%{----}%
%{--<ul class="one-to-many">--}%
%{--<g:each in="${manufacturerInstance?.contact?}" var="c">--}%
    %{--<li><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>--}%
%{--</g:each>--}%
%{--<li class="add">--}%
%{--<g:link controller="contact" action="create" params="['manufacturer.id': manufacturerInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contact.label', default: 'Contact')])}</g:link>--}%
%{--</li>--}%
%{--</ul>--}%

					%{--<span class="help-inline">${hasErrors(bean: manufacturerInstance, field: 'contact', 'error')}</span>--}%
				%{--</div>--}%
			%{--</div>--}%

