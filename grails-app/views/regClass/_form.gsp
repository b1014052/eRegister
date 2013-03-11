<%@ page import="uk.ac.shu.webarch.eregister.RegClass" %>



<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="regClass.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${regClassInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'classInstructor', 'error')} required">
	<label for="classInstructor">
		<g:message code="regClass.classInstructor.label" default="Class Instructor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="classInstructor" name="classInstructor.id" from="${uk.ac.shu.webarch.eregister.Instructor.list()}" optionKey="id" required="" value="${regClassInstance?.classInstructor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'course', 'error')} required">
	<label for="course">
		<g:message code="regClass.course.label" default="Course" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="course" name="course.id" from="${uk.ac.shu.webarch.eregister.Course.list()}" optionKey="id" required="" value="${regClassInstance?.course?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: regClassInstance, field: 'studentEnrolled', 'error')} ">
	<label for="studentEnrolled">
		<g:message code="regClass.studentEnrolled.label" default="Student Enrolled" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${regClassInstance?.studentEnrolled?}" var="s">
    <li><g:link controller="enrollment" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="enrollment" action="create" params="['regClass.id': regClassInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'enrollment.label', default: 'Enrollment')])}</g:link>
</li>
</ul>

</div>

