<%@ page import="uk.ac.shu.webarch.eregister.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'classes', 'error')} ">
	<label for="classes">
		<g:message code="course.classes.label" default="Classes" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.classes?}" var="c">
    <li><g:link controller="regClass" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regClass" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regClass.label', default: 'RegClass')])}</g:link>
</li>
</ul>

</div>

