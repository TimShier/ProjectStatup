package startupfunnel.app

class Answer {
    User createdBy
    Integer versionNumber
    String value
    Date dateCreated

    static belongsTo = [question:Question]
    static hasMany = [scores:Score]


    static constraints = {
    }
}
