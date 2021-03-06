package startupfunnel.app

class Answer {
    User createdBy
    Integer versionNumber = 0
    Integer value
    String text
    Date dateCreated

    Question question

    static belongsTo = [project:Project]
    static hasMany = [scores:Score]


    static constraints = {
        value(nullable: true)
    }
}
