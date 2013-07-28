package startupfunnel.app

import startupfunnel.app.enums.RoleTypeEnum

class User {
    String emailAddress
    String firstName
    String lastName
    String password // encrypted.



    RoleTypeEnum role

    static constraints = {
        emailAddress(nullable:false, email:true)
        firstName(nullable: false)
        lastName(nullable: false)
        password(nullable: false)
        role(nullable:false)
    }
}
