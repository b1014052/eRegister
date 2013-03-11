<%@ page import="uk.ac.shu.webarch.eregister.RegisterEntry" %>



<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'registrationSheet', 'error')} required">
	<label for="registrationSheet">
		<g:message code="registerEntry.registrationSheet.label" default="Registration Sheet" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="registrationSheet" name="registrationSheet.id" from="${uk.ac.shu.webarch.eregister.RegistrationSheet.list()}" optionKey="id" required="" value="${registerEntryInstance?.registrationSheet?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registerEntryInstance, field: 'studentEnrolled', 'error')} required">
	<label for="studentEnrolled">
		<g:message code="registerEntry.studentEnrolled.label" default="Student Enrolled" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="studentEnrolled" name="studentEnrolled.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${registerEntryInstance?.studentEnrolled?.id}" class="many-to-one"/>
</div>

