<%@ page import="uk.ac.shu.webarch.eregister.Enrollment" %>



<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'classes', 'error')} required">
	<label for="classes">
		<g:message code="enrollment.classes.label" default="Classes" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="classes" name="classes.id" from="${uk.ac.shu.webarch.eregister.RegClass.list()}" optionKey="id" required="" value="${enrollmentInstance?.classes?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: enrollmentInstance, field: 'studentEnrolled', 'error')} required">
	<label for="studentEnrolled">
		<g:message code="enrollment.studentEnrolled.label" default="Student Enrolled" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="studentEnrolled" name="studentEnrolled.id" from="${uk.ac.shu.webarch.eregister.Student.list()}" optionKey="id" required="" value="${enrollmentInstance?.studentEnrolled?.id}" class="many-to-one"/>
</div>

