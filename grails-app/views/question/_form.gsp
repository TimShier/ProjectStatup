<%@ page import="startupfunnel.app.Question" %>



<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'answers', 'error')} ">
	<label for="answers">
		<g:message code="question.answers.label" default="Answers" />
		
	</label>
	<g:select name="answers" from="${startupfunnel.app.Answer.list()}" multiple="multiple" optionKey="id" size="5" value="${questionInstance?.answers*.id}" class="many-to-many"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'helpText', 'error')} ">
	<label for="helpText">
		<g:message code="question.helpText.label" default="Help Text" />
		
	</label>
	<g:textField name="helpText" value="${questionInstance?.helpText}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'orderIndex', 'error')} required">
	<label for="orderIndex">
		<g:message code="question.orderIndex.label" default="Order Index" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="orderIndex" required="" value="${questionInstance.orderIndex}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'stage', 'error')} required">
	<label for="stage">
		<g:message code="question.stage.label" default="Stage" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="stage" name="stage.id" from="${startupfunnel.app.Stage.list()}" optionKey="id" required="" value="${questionInstance?.stage?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'text', 'error')} ">
	<label for="text">
		<g:message code="question.text.label" default="Text" />
		
	</label>
	<g:textField name="text" value="${questionInstance?.text}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: questionInstance, field: 'value', 'error')} required">
	<label for="value">
		<g:message code="question.value.label" default="Value" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="value" required="" value="${questionInstance.value}"/>
</div>

