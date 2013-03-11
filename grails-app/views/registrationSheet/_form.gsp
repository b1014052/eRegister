<%@ page import="uk.ac.shu.webarch.eregister.RegistrationSheet" %>



<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'fullStudentName', 'error')} required">
	<label for="fullStudentName">
		<g:message code="registrationSheet.fullStudentName.label" default="Full Student Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="fullStudentName" required="" value="${registrationSheetInstance?.fullStudentName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'classes', 'error')} required">
	<label for="classes">
		<g:message code="registrationSheet.classes.label" default="Classes" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="classes" name="classes.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" required="" value="${registrationSheetInstance?.classes?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'registerEntry', 'error')} required">
	<label for="registerEntry">
		<g:message code="registrationSheet.registerEntry.label" default="Register Entry" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="registerEntry" name="registerEntry.id" from="${uk.ac.shu.webarch.eregister.RegisterEntry.list()}" optionKey="id" required="" value="${registrationSheetInstance?.registerEntry?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: registrationSheetInstance, field: 'studentsAttended', 'error')} ">
	<label for="studentsAttended">
		<g:message code="registrationSheet.studentsAttended.label" default="Students Attended" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${registrationSheetInstance?.studentsAttended?}" var="s">
    <li><g:link controller="registerEntry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="registerEntry" action="create" params="['registrationSheet.id': registrationSheetInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'registerEntry.label', default: 'RegisterEntry')])}</g:link>
</li>
</ul>

</div>

