package startupfunnel.app

class Project {
    String name
    Date startDate
    Date dateCreated
    Date presentationDate

    static hasMany = [contacts:Contact, stages:Stage] // all contacts on project. | all stages in this project.

    static constraints = {
    }
}
