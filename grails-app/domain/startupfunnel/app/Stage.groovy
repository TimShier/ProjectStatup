package startupfunnel.app

import startupfunnel.app.enums.StageStatusEnum

class Stage {
    StageStatusEnum stage
    Date startDate
    Date endDate
    Date deadline
    Integer mark // WTF
    String title
    String description
    Integer orderIndex = 0 // order that the stage will run.

    static hasMany=[questions:Question]

    static constraints = {
    }
}
