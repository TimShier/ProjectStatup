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

        User admin = new User(
                emailAddress: "admin@projectstartup.com",
                firstName: "admin",
                lastName: "admin",
                password: "password",
                role: RoleType.ADMIN
        ).save()

        User student = new User(
                emailAddress: "student@projectstartup.com",
                firstName: "student",
                lastName: "student",
                password: "password",
                role: RoleType.ADMIN
        ).save()

        User mentor = new User(
                emailAddress: "mentor@projectstartup.com",
                firstName: "mentor",
                lastName: "mentor",
                password: "password",
                role: RoleType.ADMIN
        ).save()

        User adjudicator = new User(
                emailAddress: "adjudicator@projectstartup.com",
                firstName: "adjudicator",
                lastName: "adjudicator",
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
