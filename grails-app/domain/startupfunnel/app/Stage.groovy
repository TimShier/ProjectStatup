package startupfunnel.app

import startupfunnel.app.enums.StageStatus

class Stage {
    StageStatus status
    Date startDate
    Date endDate
    Date dateCreated
    Date deadline
    Integer mark // WTF
    String title
    String description
    Integer orderIndex = 0 // order that the stage will run.

    static hasMany=[questions:Question]

    static constraints = {
    }
}
