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

        User user1 = new User(
                emailAddress: "admin@projectstartup.com",
                firstName: "admin",
                lastName: "admin",
                password: "password",
                role: RoleType.ADMIN
        ).save()

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
