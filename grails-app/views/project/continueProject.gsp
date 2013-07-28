<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>


    <title>Continue Project...</title>
</head>
<body>
<div class="container-fluid">
    <div class="content scaffold-list" role="main">
        <h1><g:message code="default.list.label" args="[entityName]" /></h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <div id="questionMore"  class="row-fluid">
            <div class="box span12">
                <div class="box-header" data-original-title>
                    <h2><i class="icon-edit"></i><span class="break"></span><span id="add_question_text">Current Surveys</span></h2>

                </div>
                <div class="box-content">
                    <g:each in="${questionAnswerMap}" var="questionAnswer">
                        <p>${questionAnswer.key} || ${questionAnswer.value}</p>
                    </g:each>
                </div>
            </div>
            <!-- end question-->
        </div>
    </div>


</div>
</div>
</body>
</html>
