package startupfunnel.app

import org.springframework.dao.DataIntegrityViolationException

class ProjectController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [projectInstanceList: Project.list(params), projectInstanceTotal: Project.count()]
    }

    def create() {
        [projectInstance: new Project(params)]
    }

    def save() {
        def projectInstance = new Project(params)
        if (!projectInstance.save(flush: true)) {
            render(view: "create", model: [projectInstance: projectInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'project.label', default: 'Project'), projectInstance.id])
        redirect(action: "show", id: projectInstance.id)
    }

    def continueProject(){
        // expects project ID in params.id
        println params
        Project project = Project.get(params.id)
        if(!project)
        {
            flash.message = "Couldn't find that project"
            println "FAILED"
            redirect(action:"index")
            return
        }

        def stages = Stage.findAllBySkeleton(project.skeleton).sort{it.orderIndex}

        Stage stage = stages.get(project.currentOrderIndex ?: 0)

        // return a QuestionAnswerMap QuestionAnswerMap[Question] = [answer1,answer2,answer3] // all relating to this question.
        Map questionAnswerMap = [:]

        stage.questions.sort{it.orderIndex}.each{Question question ->

            questionAnswerMap[question] = Answer.findAllByQuestionAndProject(question, project).sort{-it.versionNumber}[0]
        }

        println "${stages} << Stages"
        [questionAnswerMap:questionAnswerMap]
    }

    def show() {
        def projectInstance = Project.get(params.id)
        if (!projectInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), params.id])
            redirect(action: "list")
            return
        }

        [projectInstance: projectInstance]
    }

    def edit() {
        def projectInstance = Project.get(params.id)
        if (!projectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), params.id])
            redirect(action: "list")
            return
        }

        [projectInstance: projectInstance]
    }

    def update() {
        def projectInstance = Project.get(params.id)
        if (!projectInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (projectInstance.version > version) {
                projectInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'project.label', default: 'Project')] as Object[],
                          "Another user has updated this Project while you were editing")
                render(view: "edit", model: [projectInstance: projectInstance])
                return
            }
        }

        projectInstance.properties = params

        if (!projectInstance.save(flush: true)) {
            render(view: "edit", model: [projectInstance: projectInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'project.label', default: 'Project'), projectInstance.id])
        redirect(action: "show", id: projectInstance.id)
    }

    def delete() {
        def projectInstance = Project.get(params.id)
        if (!projectInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'project.label', default: 'Project'), params.id])
            redirect(action: "list")
            return
        }

        try {
            projectInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'project.label', default: 'Project'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'project.label', default: 'Project'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
