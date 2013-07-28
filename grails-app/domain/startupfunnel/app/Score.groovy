package startupfunnel.app

class Score {
    User createdBy
    Integer value
    String feedback
    Date dateCreated

    static belongsTo = [answer:Answer]

    static constraints = {

    }
}
