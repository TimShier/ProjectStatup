package startupfunnel.app

import org.springframework.dao.DataIntegrityViolationException

class ProjectSkeletonController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [projectSkeletonInstanceList: ProjectSkeleton.list(params), projectSkeletonInstanceTotal: ProjectSkeleton.count()]
    }

    def create() {
        [projectSkeletonInstance: new ProjectSkeleton(params)]
    }

    def save() {
        def projectSkeletonInstance = new ProjectSkeleton(params)
        if (!projectSkeletonInstance.save(flush: true)) {
            render(view: "create", model: [projectSkeletonInstance: projectSkeletonInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'projectSkeleton.label', default: 'ProjectSkeleton'), projectSkeletonInstance.id])
        redirect(action: "show", id: projectSkeletonInstance.id)
    }

    def show() {
        def projectSkeletonInstance = ProjectSkeleton.get(params.id)
        if (!projectSkeletonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectSkeleton.label', default: 'ProjectSkeleton'), params.id])
            redirect(action: "list")
            return
        }

        [projectSkeletonInstance: projectSkeletonInstance]
    }

    def edit() {
        def projectSkeletonInstance = ProjectSkeleton.get(params.id)
        if (!projectSkeletonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectSkeleton.label', default: 'ProjectSkeleton'), params.id])
            redirect(action: "list")
            return
        }

        [projectSkeletonInstance: projectSkeletonInstance]
    }

    def update() {
        def projectSkeletonInstance = ProjectSkeleton.get(params.id)
        if (!projectSkeletonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectSkeleton.label', default: 'ProjectSkeleton'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (projectSkeletonInstance.version > version) {
                projectSkeletonInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                        [message(code: 'projectSkeleton.label', default: 'ProjectSkeleton')] as Object[],
                        "Another user has updated this ProjectSkeleton while you were editing")
                render(view: "edit", model: [projectSkeletonInstance: projectSkeletonInstance])
                return
            }
        }

        projectSkeletonInstance.properties = params

        if (!projectSkeletonInstance.save(flush: true)) {
            render(view: "edit", model: [projectSkeletonInstance: projectSkeletonInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'projectSkeleton.label', default: 'ProjectSkeleton'), projectSkeletonInstance.id])
        redirect(action: "show", id: projectSkeletonInstance.id)
    }

    def delete() {
        def projectSkeletonInstance = ProjectSkeleton.get(params.id)
        if (!projectSkeletonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'projectSkeleton.label', default: 'ProjectSkeleton'), params.id])
            redirect(action: "list")
            return
        }

        try {
            projectSkeletonInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'projectSkeleton.label', default: 'ProjectSkeleton'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'projectSkeleton.label', default: 'ProjectSkeleton'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
