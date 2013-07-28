<%@ page import="startupfunnel.app.ProjectSkeleton" %>



<div class="fieldcontain ${hasErrors(bean: projectSkeletonInstance, field: 'createdBy', 'error')} required">
	<label for="createdBy">
		<g:message code="projectSkeleton.createdBy.label" default="Created By" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="createdBy" name="createdBy.id" from="${startupfunnel.app.User.list()}" optionKey="id" required="" value="${projectSkeletonInstance?.createdBy?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectSkeletonInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="projectSkeleton.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${projectSkeletonInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: projectSkeletonInstance, field: 'stages', 'error')} ">
	<label for="stages">
		<g:message code="projectSkeleton.stages.label" default="Stages" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${projectSkeletonInstance?.stages?}" var="s">
    <li><g:link controller="stage" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="stage" action="create" params="['projectSkeleton.id': projectSkeletonInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'stage.label', default: 'Stage')])}</g:link>
</li>
</ul>

</div>

