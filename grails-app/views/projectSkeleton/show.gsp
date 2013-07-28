
<%@ page import="startupfunnel.app.ProjectSkeleton" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'projectSkeleton.label', default: 'ProjectSkeleton')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-projectSkeleton" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-projectSkeleton" class="content scaffold-show" role="main">
			<h1>${projectSkeletonInstance?.name}</h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>


            <div class="container-fluid">
                <div class="content scaffold-list" role="main">
                    <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                    <g:if test="${flash.message}">
                        <div class="message" role="status">${flash.message}</div>
                    </g:if>
                    <div id="questionMore"  class="row-fluid">
                        <div class="box span12">
                            <div class="box-header" data-original-title>
                                <h2><i class="icon-edit"></i><span class="break"></span><span id="add_question_text">${projectSkeletonInstance?.name}</span></h2>

                            </div>
                            <div class="box-content">
                                <ul class="property-list projectSkeleton">
                                %{-- <g:if test="${projectSkeletonInstance?.name}">
                                    <li class="fieldcontain">
                                        <span id="name-label" class="property-label"><g:message code="projectSkeleton.name.label" default="Name" /></span>

                                        <span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${projectSkeletonInstance}" field="name"/></span>

                                    </li>
                                </g:if>--}%

                                    <g:if test="${projectSkeletonInstance?.createdBy}">
                                        <li class="fieldcontain">
                                            <span id="createdBy-label" class="property-label"><g:message code="projectSkeleton.createdBy.label" default="Created By" /></span>

                                            <span class="property-value" aria-labelledby="createdBy-label"><g:link controller="user" action="show" id="${projectSkeletonInstance?.createdBy?.id}">${projectSkeletonInstance?.createdBy?.emailAddress?.encodeAsHTML()}</g:link></span>

                                        </li>
                                    </g:if>

                                    <g:if test="${projectSkeletonInstance?.dateCreated}">
                                        <li class="fieldcontain">
                                            <span id="dateCreated-label" class="property-label"><g:message code="projectSkeleton.dateCreated.label" default="Date Created" /></span>

                                            <span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${projectSkeletonInstance?.dateCreated}" /></span>

                                        </li>
                                    </g:if>

                                    <g:if test="${projectSkeletonInstance?.lastUpdated}">
                                        <li class="fieldcontain">
                                            <span id="lastUpdated-label" class="property-label"><g:message code="projectSkeleton.lastUpdated.label" default="Last Updated" /></span>

                                            <span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${projectSkeletonInstance?.lastUpdated}" /></span>

                                        </li>
                                    </g:if>

                                    <g:if test="${projectSkeletonInstance?.stages}">
                                        <li class="fieldcontain">
                                            <span id="stages-label" class="property-label"><g:message code="projectSkeleton.stages.label" default="Stages" /></span>
                                            <g:render template="/stage/inner-edit-list" model="${[stageInstanceList: projectSkeletonInstance?.stages, stageInstanceTotal: projectSkeletonInstance?.stages?.size()]}"/>
                                        </li>
                                    </g:if>
                                </ul>
                            </div>
                        </div>
                        <!-- end question-->
                    </div>
                </div>


			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${projectSkeletonInstance?.id}" />
					<g:link class="edit" action="edit" id="${projectSkeletonInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>


    </body>
</html>
