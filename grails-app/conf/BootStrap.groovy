import startupfunnel.app.User
import startupfunnel.app.enums.RoleType

class BootStrap {

    def init = { servletContext ->

        //Users
        /*String  emailAddress,
                firstName,
                lastName,
                password // encrypted.

        RoleTypeEnum role    */

       /* User user1 = new User(
                emailAddress: "email@address.com",
                firstName: "first",
                lastName: "last",
                password: "pA5sW0rD",
                role: RoleType
        ).save()*/

        User tim = new User(
                 emailAddress: "tim.shier@instantafrica.com",
                 firstName: "Tim",
                 lastName: "Sh",
                 password: "12345",
                 role: RoleType.ADMIN
         ).save()


    }
    def destroy = {
    }
}
