<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>


    <title>Continue Project...</title>
</head>
<body>
<div class="container-fluid">
    <div class="content scaffold-list" role="main">
        <h1>Continue Project</h1>
        <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
        </g:if>
        <g:each in="${questionAnswerMap}" var="questionAnswer" status="counter">
            <div id="questionMore"  class="row-fluid">
                <div class="box span12">
                    <div class="box-header" data-original-title>
                        <h2><i class="icon-edit"></i><span class="break"></span><span id="add_question_text">Part ${questionAnswer.key.orderIndex+1}</span></h2>

                    </div>
                    <div class="box-content">
                        <ul class="nav tab-menu nav-tabs">
                            <li class="active"><a href="#summary">Summary</a></li>
                            <li><a href="#feedback">Feedback</a></li>
                            <li><a href="#resubmit">Submit</a></li>
                        </ul>

                        <div class="tab-content">
                            <div class="tab-pane active" id="summary">
                                Summary
                            </div>
                            <div class="tab-pane" id="feedback">
                                <p>${questionAnswer.key.text}</p>
                                <p>Answer: ${questionAnswer.value.text}</p>

                                <table class="table table-condensed">
                                    <thead>
                                    <th>
                                        Score
                                    </th>
                                    <th>
                                        Feedback
                                    </th>
                                    <th>
                                        Feedback by
                                    </th>
                                    <th>
                                        Status
                                    </th>

                                    </thead>
                                    <g:each in="${questionAnswer.value.scores}" var="score">
                                        <tr>
                                            <td>${score.value}</td>
                                            <td>${score.feedback}</td>
                                            <td><g:link controller="user" action="show" id="${score.createdBy.id}">${score.createdBy.firstName} ${score.createdBy.lastName}</g:link></td>
                                            <td><g:if test="${score.status == startupfunnel.app.enums.ScoreStatus.APPROVED}"><span class="label label-success">Approved</span></g:if><g:elseif test="${score.status == startupfunnel.app.enums.ScoreStatus.REJECTED}"><span class="label label-important">Rejected</span></g:elseif><g:elseif test="${score.status == startupfunnel.app.enums.ScoreStatus.UNDERREVIEW}"><span class="label label-warning">Under review</span></g:elseif></td>
                                        </tr>
                                    </g:each>
                                </table>
                            </div>

                            <div class="tab-pane" id="resubmit">
                                Submit
                            </div>

                        </div>




                    </div>
                </div>
                <!-- end question-->
            </div>

            <div class="row-fluid sortable">

                <div class="box span12">
                    <div class="box-header">
                        <h2><i class="icon-th"></i> Tabs</h2>
                    </div>
                    <div class="box-content">
                        <ul class="nav tab-menu nav-tabs" id="myTab">
                            <li class="active"><a href="#fun">Info</a></li>
                            <li><a href="#custom">Custom</a></li>
                            <li><a href="#messages">Messages</a></li>
                        </ul>

                        <div id="myTabContent" class="tab-content">
                            <div class="tab-pane active" id="fun">
                                <p>

                                    Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.
                                </p>

                            </div>
                            <div class="tab-pane" id="custom">
                                <p>
                                    Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.
                                </p>
                            </div>
                            <div class="tab-pane" id="messages">
                                <p>
                                    Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.
                                </p>
                                <p>
                                    Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer
                                </p>
                            </div>
                        </div>
                    </div>
                </div><!--/span-->

            </div><!--/row-->
        </g:each>
    </div>


</div>
</div>
</body>
</html>
