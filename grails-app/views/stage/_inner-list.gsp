<table class="table table-striped table-bordered">
    <thead>
    <tr>

        <g:sortableColumn property="mark" title="${message(code: 'stage.mark.label', default: 'Mark')}" />

        <g:sortableColumn property="dateCreated" title="${message(code: 'stage.dateCreated.label', default: 'Date Created')}" />

        <g:sortableColumn property="deadline" title="${message(code: 'stage.deadline.label', default: 'Deadline')}" />

        <g:sortableColumn property="description" title="${message(code: 'stage.description.label', default: 'Description')}" />

        <g:sortableColumn property="endDate" title="${message(code: 'stage.endDate.label', default: 'End Date')}" />

        <g:sortableColumn property="orderIndex" title="${message(code: 'stage.orderIndex.label', default: 'Order')}" />

    </tr>
    </thead>
    <tbody>
    <g:each in="${stageInstanceList}" status="i" var="stageInstance">
        <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

            <td><g:link controller="stage" action="show" id="${stageInstance.id}">${fieldValue(bean: stageInstance, field: "mark")}</g:link></td>

            <td><g:formatDate date="${stageInstance.dateCreated}" /></td>

            <td><g:formatDate date="${stageInstance.deadline}" /></td>

            <td>${fieldValue(bean: stageInstance, field: "description")}</td>

            <td><g:formatDate date="${stageInstance.endDate}" /></td>

            <td><g:link controller="stage" action="show" id="${stageInstance?.id}">Stage ${fieldValue(bean: stageInstance, field: "orderIndex")}</g:link></td>

        </tr>
    </g:each>
    </tbody>
</table>
<div class="pagination">
    <g:paginate total="${stageInstanceTotal}" />
</div>