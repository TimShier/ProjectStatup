package startupfunnel.app

class Score {
    User createdBy
    Integer value
    String feedback
    Date dateCreated
    Boolean approved = false

    static belongsTo = [answer:Answer]

    static constraints = {
        approved(nullable: true)

    }
}
