<table class="table table-striped table-bordered">
    <thead>
    <tr>

        <g:sortableColumn property="mark" title="${message(code: 'stage.mark.label', default: 'Mark')}" width="20"/>

        <g:sortableColumn property="dateCreated"
                          title="${message(code: 'stage.dateCreated.label', default: 'Date Created')}"/>

        <g:sortableColumn property="deadline" title="${message(code: 'stage.deadline.label', default: 'Deadline')}"/>

        <g:sortableColumn property="description"
                          title="${message(code: 'stage.description.label', default: 'Description')}"/>

        <g:sortableColumn property="endDate" title="${message(code: 'stage.endDate.label', default: 'End Date')}"/>

        <g:sortableColumn property="orderIndex" title="${message(code: 'stage.orderIndex.label', default: 'Order')}"/>

        <th>Action</th>

    </tr>
    </thead>
    %{--</table>
    <table class="table table-striped table-bordered">--}%
    <tbody>
    <g:each in="${stageInstanceList}" status="i" var="stageInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link controller="stage" action="show"
                        id="${stageInstance.id}">${fieldValue(bean: stageInstance, field: "mark")}</g:link></td>

            <td><g:formatDate date="${stageInstance.dateCreated}"/></td>

            <td><g:formatDate date="${stageInstance.deadline}"/></td>

            <td>${fieldValue(bean: stageInstance, field: "description")}</td>

            <td><g:formatDate date="${stageInstance.endDate}"/></td>

            <td><g:link controller="stage" action="show"
                        id="${stageInstance?.id}">Stage ${fieldValue(bean: stageInstance, field: "orderIndex")}</g:link></td>

            <td><a href="#" class="js-expand" data-expand="js-expand-${stageInstance.id}">Expand</a></td>
        </tr>
        <tr>
            <td colspan="6" style="display:none;" class="js-expand-${stageInstance.id}">
                <g:if test="${stageInstance?.questions?.size() > 0}">

                    <table class="table table-striped table-bordered">
                        <thead>
                        <tr>

                            <g:sortableColumn property="dateCreated"
                                              title="${message(code: 'question.dateCreated.label', default: 'Date Created')}"/>

                            <g:sortableColumn property="helpText"
                                              title="${message(code: 'question.helpText.label', default: 'Help Text')}"/>

                            <g:sortableColumn property="orderIndex"
                                              title="${message(code: 'question.orderIndex.label', default: 'Order Index')}"/>

                            <th><g:message code="question.stage.label" default="Stage"/></th>

                            <g:sortableColumn property="text"
                                              title="${message(code: 'question.text.label', default: 'Text')}"/>

                            <g:sortableColumn property="value"
                                              title="${message(code: 'question.value.label', default: 'Value')}"/>

                        </tr>
                        </thead>
                        <tbody>
                        <g:each in="${stageInstance?.questions}" status="j" var="questionInstance">
                            <tr class="${(j % 2) == 0 ? 'even' : 'odd'}">

                                <td><g:link action="show"
                                            id="${questionInstance.id}">${fieldValue(bean: questionInstance, field: "dateCreated")}</g:link></td>

                                <td>${fieldValue(bean: questionInstance, field: "helpText")}</td>

                                <td>${fieldValue(bean: questionInstance, field: "orderIndex")}</td>

                                <td>${fieldValue(bean: questionInstance, field: "stage")}</td>

                                <td>${fieldValue(bean: questionInstance, field: "text")}</td>

                                <td>${fieldValue(bean: questionInstance, field: "value")}</td>

                            </tr>
                        </g:each>
                        </tbody>
                    </table>
                </g:if>
                <g:else>
                    No Questions in this stage. Nothing to see here. Move along...
                </g:else>
            </td>
        </tr>

    </g:each>
    </tbody>
</table>

<div class="pagination">
    <g:paginate total="${stageInstanceTotal}"/>
</div>

<script type="text/javascript">
    $('.js-expand').click(function(e){
        e.preventDefault();
        $class = $(this).data("expand");

        $('.'+$class).fadeIn();
    })
</script>