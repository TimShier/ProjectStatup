<%@ page import="startupfunnel.app.Project" %>



<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'skeleton', 'error')} ">
	<label for="skeleton">
		<g:message code="project.skeleton.label" default="Skeleton" />
		
	</label>
	<g:select id="skeleton" name="skeleton.id" from="${startupfunnel.app.ProjectSkeleton.list()}" optionKey="id" value="${projectInstance?.skeleton?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'currentOrderIndex', 'error')} ">
	<label for="currentOrderIndex">
		<g:message code="project.currentOrderIndex.label" default="Current Order Index" />
		
	</label>
	<g:select id="currentOrderIndex" name="currentOrderIndex.id" from="${startupfunnel.app.Stage.list()}" optionKey="id" value="${projectInstance?.currentOrderIndex?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'answers', 'error')} ">
	<label for="answers">
		<g:message code="project.answers.label" default="Answers" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.answers?}" var="a">
    <li><g:link controller="answer" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="answer" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'answer.label', default: 'Answer')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'contacts', 'error')} ">
	<label for="contacts">
		<g:message code="project.contacts.label" default="Contacts" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectInstance?.contacts?}" var="c">
    <li><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="contact" action="create" params="['project.id': projectInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'contact.label', default: 'Contact')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="project.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${projectInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'presentationDate', 'error')} required">
	<label for="presentationDate">
		<g:message code="project.presentationDate.label" default="Presentation Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="presentationDate" precision="day"  value="${projectInstance?.presentationDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: projectInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="project.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${projectInstance?.startDate}"  />
</div>

