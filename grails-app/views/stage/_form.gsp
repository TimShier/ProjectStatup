<%@ page import="startupfunnel.app.Stage" %>



<div class="fieldcontain ${hasErrors(bean: stageInstance, field: 'deadline', 'error')} required">
	<label for="deadline">
		<g:message code="stage.deadline.label" default="Deadline" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="deadline" precision="day"  value="${stageInstance?.deadline}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: stageInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="stage.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${stageInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stageInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="stage.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${stageInstance?.endDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: stageInstance, field: 'mark', 'error')} required">
	<label for="mark">
		<g:message code="stage.mark.label" default="Mark" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="mark" required="" value="${stageInstance.mark}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stageInstance, field: 'orderIndex', 'error')} required">
	<label for="orderIndex">
		<g:message code="stage.orderIndex.label" default="Order Index" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="orderIndex" required="" value="${stageInstance.orderIndex}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stageInstance, field: 'questions', 'error')} ">
	<label for="questions">
		<g:message code="stage.questions.label" default="Questions" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${stageInstance?.questions?}" var="q">
    <li><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="question" action="create" params="['stage.id': stageInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'question.label', default: 'Question')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: stageInstance, field: 'stage', 'error')} required">
	<label for="stage">
		<g:message code="stage.stage.label" default="Stage" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="stage" name="stage.id" from="${startupfunnel.app.enums.StageStatusEnum.list()}" optionKey="id" required="" value="${stageInstance?.stage?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: stageInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="stage.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${stageInstance?.startDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: stageInstance, field: 'title', 'error')} ">
	<label for="title">
		<g:message code="stage.title.label" default="Title" />
		
	</label>
	<g:textField name="title" value="${stageInstance?.title}"/>
</div>

