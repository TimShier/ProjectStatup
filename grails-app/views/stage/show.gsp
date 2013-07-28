
<%@ page import="startupfunnel.app.Stage" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'stage.label', default: 'Stage')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-stage" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-stage" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list stage">
			
				<g:if test="${stageInstance?.mark}">
				<li class="fieldcontain">
					<span id="mark-label" class="property-label"><g:message code="stage.mark.label" default="Mark" /></span>
					
						<span class="property-value" aria-labelledby="mark-label"><g:fieldValue bean="${stageInstance}" field="mark"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stageInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="stage.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${stageInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stageInstance?.deadline}">
				<li class="fieldcontain">
					<span id="deadline-label" class="property-label"><g:message code="stage.deadline.label" default="Deadline" /></span>
					
						<span class="property-value" aria-labelledby="deadline-label"><g:formatDate date="${stageInstance?.deadline}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stageInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="stage.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${stageInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stageInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="stage.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${stageInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stageInstance?.orderIndex}">
				<li class="fieldcontain">
					<span id="orderIndex-label" class="property-label"><g:message code="stage.orderIndex.label" default="Order Index" /></span>
					
						<span class="property-value" aria-labelledby="orderIndex-label"><g:fieldValue bean="${stageInstance}" field="orderIndex"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stageInstance?.questions}">
				<li class="fieldcontain">
					<span id="questions-label" class="property-label"><g:message code="stage.questions.label" default="Questions" /></span>
					
						<g:each in="${stageInstance.questions}" var="q">
						<span class="property-value" aria-labelledby="questions-label"><g:link controller="question" action="show" id="${q.id}">${q?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${stageInstance?.skeleton}">
				<li class="fieldcontain">
					<span id="skeleton-label" class="property-label"><g:message code="stage.skeleton.label" default="Skeleton" /></span>
					
						<span class="property-value" aria-labelledby="skeleton-label"><g:link controller="projectSkeleton" action="show" id="${stageInstance?.skeleton?.id}">${stageInstance?.skeleton?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${stageInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="stage.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${stageInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${stageInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="stage.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:fieldValue bean="${stageInstance}" field="status"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${stageInstance?.title}">
				<li class="fieldcontain">
					<span id="title-label" class="property-label"><g:message code="stage.title.label" default="Title" /></span>
					
						<span class="property-value" aria-labelledby="title-label"><g:fieldValue bean="${stageInstance}" field="title"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${stageInstance?.id}" />
					<g:link class="edit" action="edit" id="${stageInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
