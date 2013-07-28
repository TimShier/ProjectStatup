
<%@ page import="startupfunnel.app.Project" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-project" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list project">
			
				<g:if test="${projectInstance?.skeleton}">
				<li class="fieldcontain">
					<span id="skeleton-label" class="property-label"><g:message code="project.skeleton.label" default="Skeleton" /></span>
					
						<span class="property-value" aria-labelledby="skeleton-label"><g:link controller="projectSkeleton" action="show" id="${projectInstance?.skeleton?.id}">${projectInstance?.skeleton?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.currentOrderIndex}">
				<li class="fieldcontain">
					<span id="currentOrderIndex-label" class="property-label"><g:message code="project.currentOrderIndex.label" default="Current Order Index" /></span>
					
						<span class="property-value" aria-labelledby="currentOrderIndex-label"><g:link controller="stage" action="show" id="${projectInstance?.currentOrderIndex?.id}">${projectInstance?.currentOrderIndex?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.answers}">
				<li class="fieldcontain">
					<span id="answers-label" class="property-label"><g:message code="project.answers.label" default="Answers" /></span>
					
						<g:each in="${projectInstance.answers}" var="a">
						<span class="property-value" aria-labelledby="answers-label"><g:link controller="answer" action="show" id="${a.id}">${a?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.contacts}">
				<li class="fieldcontain">
					<span id="contacts-label" class="property-label"><g:message code="project.contacts.label" default="Contacts" /></span>
					
						<g:each in="${projectInstance.contacts}" var="c">
						<span class="property-value" aria-labelledby="contacts-label"><g:link controller="contact" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="project.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${projectInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="project.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${projectInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.presentationDate}">
				<li class="fieldcontain">
					<span id="presentationDate-label" class="property-label"><g:message code="project.presentationDate.label" default="Presentation Date" /></span>
					
						<span class="property-value" aria-labelledby="presentationDate-label"><g:formatDate date="${projectInstance?.presentationDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${projectInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="project.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${projectInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${projectInstance?.id}" />
					<g:link class="edit" action="edit" id="${projectInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
