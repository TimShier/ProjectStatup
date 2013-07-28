<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>

    <g:set var="entityName" value="${message(code: 'survey.label', default: 'Survey')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<div class="container-fluid">
    <div id="list-survey" class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>

            <g:each in="${questionAnswerMap}" var="qaMap">
                <div class="box span12">
                    <div class="box-header" data-original-title>
                        <h2><i class="icon-edit"></i><span class="break"></span><span id="add_question_text">Question ${qaMap.key}</span></h2>

                    </div>
                    <div class="box-content">
                        <table class="table table-striped table-bordered">
                            <thead>
                            <tr>

                                <th>Name</th>

                                <th>Description</th>

                                <th>Price per survey</th>

                                <th>Active</th>


                                <th>Surveys started</th>

                                <th>Total surveys</th>

                                <th>Manage</th>

                            </tr>
                            </thead>
                            <tbody>
                            <g:each in="${surveyInstanceList}" status="i" var="surveyInstance">
                                <tr>

                                    <td class="center">${fieldValue(bean: surveyInstance, field: "name")}</td>

                                    <td class="center">${fieldValue(bean: surveyInstance, field: "description")}</td>

                                    <td class="center">${fieldValue(bean: surveyInstance, field: "unitValue")}</td>


                                    <td class="center">
                                        <g:if test="${surveyInstance.isActive}">
                                            <span class="label label-success">Active</span>
                                        </g:if>

                                        <g:if test="${!surveyInstance.isActive}">
                                            <span class="label">Inactive</span>
                                        </g:if>

                                    </td>



                                    <td>${surveyInstance.userSurveys.size()}</td>

                                    <td>${surveyInstance.totalVolume}</td>

                                    <td class="center">

                                        <g:link action="report" id="${surveyInstance.id}" class="btn btn-success" >
                                            <i class="icon-zoom-in icon-white"></i>
                                        </g:link>
                                        <g:link action="edit" id="${surveyInstance.id}" class="btn btn-info" >
                                            <i class="icon-edit icon-white"></i>
                                        </g:link>
                                        <g:link action="toggleActive" class="btn btn-danger" id="${surveyInstance.id}">
                                            <i class="icon-trash icon-white"></i>
                                        </g:link>
                                    </td>

                                </tr>
                            </g:each>


                            </tbody>
                        </table>
                        <g:actionSubmit class="btn btn-primary" controller="survey" action="create_custom" value="New Survey" />
                    </div>
                </div>
            </g:each>

    </div>


</div>
</div>
</body>
</html>
