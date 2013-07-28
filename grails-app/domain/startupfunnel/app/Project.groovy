package startupfunnel.app

class Project {
    String name
    Date startDate
    Date dateCreated
    Date presentationDate
    ProjectSkeleton skeleton

    static hasMany = [contacts:Contact, answers:Answer] // all contacts on project. | all stages in this project.

    static constraints = {
    }
}
