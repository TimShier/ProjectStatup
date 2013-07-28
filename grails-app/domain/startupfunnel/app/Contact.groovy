package startupfunnel.app

import startupfunnel.app.enums.RoleType
import startupfunnel.app.enums.RolePosition


class Contact {
    User user

    RoleType role
    RolePosition position

    Date dateCreated

    static belongsTo = [project:Project]

    static constraints = {
    }
}
