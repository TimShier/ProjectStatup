
<%@ page import="startupfunnel.app.Question" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'question.label', default: 'Question')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-question" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-question" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'question.dateCreated.label', default: 'Date Created')}" />
					
						<g:sortableColumn property="helpText" title="${message(code: 'question.helpText.label', default: 'Help Text')}" />
					
						<g:sortableColumn property="orderIndex" title="${message(code: 'question.orderIndex.label', default: 'Order Index')}" />
					
						<th><g:message code="question.stage.label" default="Stage" /></th>
					
						<g:sortableColumn property="text" title="${message(code: 'question.text.label', default: 'Text')}" />
					
						<g:sortableColumn property="value" title="${message(code: 'question.value.label', default: 'Value')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${questionInstanceList}" status="i" var="questionInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "dateCreated")}</g:link></td>
					
						<td>${fieldValue(bean: questionInstance, field: "helpText")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "orderIndex")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "stage")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "text")}</td>
					
						<td>${fieldValue(bean: questionInstance, field: "value")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${questionInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
