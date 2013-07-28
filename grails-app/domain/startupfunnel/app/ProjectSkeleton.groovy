package startupfunnel.app

class ProjectSkeleton {

    String name
    User createdBy
    Date dateCreated
    Date lastUpdated

    static hasMany = [stages:Stage]


    static constraints = {
    }
}
