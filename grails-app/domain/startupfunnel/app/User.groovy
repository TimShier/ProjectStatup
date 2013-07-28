package startupfunnel.app

import startupfunnel.app.enums.RoleType

class User {

    String  emailAddress,
            firstName,
            lastName,
            password // encrypted.

    RoleType role

    static constraints = {
        emailAddress(nullable:false, email:true)
        firstName(nullable: false)
        lastName(nullable: false)
        password(nullable: false)
        role(nullable:false)
    }
}
