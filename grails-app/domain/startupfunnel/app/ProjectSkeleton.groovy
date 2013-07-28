package startupfunnel.app

class ProjectSkeleton {

    String name
    User createdBy
    Date dateCreated


    static hasMany = [stages:Stage]


    static constraints = {
    }
}
