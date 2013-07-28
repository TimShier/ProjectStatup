package startupfunnel.app

import startupfunnel.app.enums.ScoreStatus

class Score {
    User createdBy
    Integer value
    String feedback
    Date dateCreated
    ScoreStatus status = ScoreStatus.UNDERREVIEW

    static belongsTo = [answer:Answer]

    static constraints = {
        status(nullable: true)

    }
}
