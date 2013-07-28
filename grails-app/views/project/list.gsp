
<%@ page import="startupfunnel.app.Project" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'project.label', default: 'Project')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-project" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-project" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th><g:message code="project.skeleton.label" default="Skeleton" /></th>
					
						<th><g:message code="project.currentOrderIndex.label" default="Current Order Index" /></th>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'project.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'project.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="presentationDate" title="${message(code: 'project.presentationDate.label', default: 'Presentation Date')}" />
					
						<g:sortableColumn property="startDate" title="${message(code: 'project.startDate.label', default: 'Start Date')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectInstanceList}" status="i" var="projectInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${projectInstance.id}">${fieldValue(bean: projectInstance, field: "skeleton")}</g:link></td>
					
						<td>${fieldValue(bean: projectInstance, field: "currentOrderIndex")}</td>
					
						<td><g:formatDate date="${projectInstance.dateCreated}" /></td>
					
						<td>${fieldValue(bean: projectInstance, field: "name")}</td>
					
						<td><g:formatDate date="${projectInstance.presentationDate}" /></td>
					
						<td><g:formatDate date="${projectInstance.startDate}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
