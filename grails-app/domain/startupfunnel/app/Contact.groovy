package startupfunnel.app

import startupfunnel.app.enums.RolePositionEnum
import startupfunnel.app.enums.RoleTypeEnum

class Contact {
    User user

    RoleTypeEnum role

    RolePositionEnum.RolePosition position

    Date dateCreated

    static belongsTo = [project:Project]

    static constraints = {
    }
}
