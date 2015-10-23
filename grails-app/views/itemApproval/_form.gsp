<%@ page import="reagent.ItemApproval" %>



			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: itemApprovalInstance, field: 'reagent', 'error')} required">
						<label for="reagent" class="control-label"><g:message code="itemApproval.reagent.label" default="Reagent" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="reagent" name="reagent.id" from="${reagent.Reagent.list()}" optionKey="id" required="" value="${itemApprovalInstance?.reagent?.id}"/>
							<span class="help-inline">${hasErrors(bean: itemApprovalInstance, field: 'reagent', 'error')}</span>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: itemApprovalInstance, field: 'manufacturedItem', 'error')} required">
						<label for="manufacturedItem" class="control-label"><g:message code="itemApproval.manufacturedItem.label" default="Manufactured Item" /><span class="required-indicator">*</span></label>
						<div>
							<g:select class="form-control" id="manufacturedItem" name="manufacturedItem.id" from="${reagent.ManufacturedItem.list()}" optionKey="id" required="" value="${itemApprovalInstance?.manufacturedItem?.id}"/>
							<span class="help-inline">${hasErrors(bean: itemApprovalInstance, field: 'manufacturedItem', 'error')}</span>
						</div>
					</div>
				</div>
			</div>

			<div class="row">
				<div class="col-lg-6">
					<div class="${hasErrors(bean: itemApprovalInstance, field: 'approvedOn', 'error')} required">
						<label for="approvedOn" class="control-label"><g:message code="itemApproval.approvedOn.label" default="Approved On" /><span class="required-indicator">*</span></label>
						<div>
							<bs:datePicker name="approvedOn" precision="day"  value="${itemApprovalInstance?.approvedOn}"  />
							<span class="help-inline">${hasErrors(bean: itemApprovalInstance, field: 'approvedOn', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: itemApprovalInstance, field: 'approvalExpiresOn', 'error')} ">
						<label for="approvalExpiresOn" class="control-label"><g:message code="itemApproval.approvalExpiresOn.label" default="Approval Expires On" /></label>
						<div>
							<bs:datePicker name="approvalExpiresOn" precision="day"  value="${itemApprovalInstance?.approvalExpiresOn}" default="none" noSelection="['': '']" />
							<span class="help-inline">${hasErrors(bean: itemApprovalInstance, field: 'approvalExpiresOn', 'error')}</span>
						</div>
					</div>
				</div>

				<div class="col-lg-6">
					<div class="${hasErrors(bean: itemApprovalInstance, field: 'approvalReport', 'error')} ">
						<label for="approvalReport" class="control-label"><g:message code="itemApproval.approvalReport.label" default="Approval Report" /></label>
						<div>

							<span class="help-inline">${hasErrors(bean: itemApprovalInstance, field: 'approvalReport', 'error')}</span>
						</div>
					</div>
				</div>
			</div>

