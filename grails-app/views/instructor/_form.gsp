<%@ page import="uk.ac.shu.webarch.eregister.Instructor" %>



<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="instructor.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${instructorInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: instructorInstance, field: 'staffId', 'error')} ">
	<label for="staffId">
		<g:message code="instructor.staffId.label" default="Staff Id" />
		
	</label>
	<g:textField name="staffId" value="${instructorInstance?.staffId}"/>
</div>

