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
                        blah
                    </div>
                </div>
            </g:each>

    </div>


</div>
</div>
</body>
</html>
