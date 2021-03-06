
<%@ page import="startupfunnel.app.ProjectSkeleton" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projectSkeleton.label', default: 'ProjectSkeleton')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-projectSkeleton" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-projectSkeleton" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
                        <g:sortableColumn property="name" title="${message(code: 'projectSkeleton.name.label', default: 'Name')}" />

                        <g:sortableColumn property="createdBy.emailAddress" title="${message(code: 'projectSkeleton.createdBy.label', default: 'Created By')}" />

						<g:sortableColumn property="dateCreated" title="${message(code: 'projectSkeleton.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="lastUpdated" title="${message(code: 'projectSkeleton.lastUpdated.label', default: 'Last Updated')}" />
					</tr>
				</thead>
				<tbody>
				<g:each in="${projectSkeletonInstanceList}" status="i" var="projectSkeletonInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
                        <td><g:link action="show" id="${projectSkeletonInstance.id}">${fieldValue(bean: projectSkeletonInstance, field: "name")}</g:link></td>

                        <td><g:link controller="user" action="show" id="${projectSkeletonInstance.createdBy.id}">${projectSkeletonInstance?.createdBy?.emailAddress}</g:link></td>
					
						<td><g:formatDate date="${projectSkeletonInstance.dateCreated}" /></td>
					
						<td><g:formatDate date="${projectSkeletonInstance.lastUpdated}" /></td>
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${projectSkeletonInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
