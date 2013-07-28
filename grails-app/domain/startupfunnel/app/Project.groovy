package startupfunnel.app

class Project {
    String name
    Date startDate
    Date dateCreated
    Date presentationDate
    ProjectSkeleton skeleton
    Stage currentOrderIndex

    static hasMany = [contacts:Contact, answers:Answer] // all contacts on project. | all stages in this project.

    static constraints = {
        skeleton(nullable:true) // for the early days of the project only.
        currentOrderIndex(nullable: true)
    }
}
