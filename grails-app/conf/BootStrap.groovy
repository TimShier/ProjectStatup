import startupfunnel.app.User
import startupfunnel.app.enums.RoleType
import startupfunnel.app.Project
import startupfunnel.app.Contact
import startupfunnel.app.enums.RolePosition

class BootStrap {

    def init = { servletContext ->

        /*
         *    --- USERS ---
        */
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
                role: RoleType.STUDENT
        ).save()

        User student2 = new User(
                emailAddress: "student2@projectstartup.com",
                firstName: "student",
                lastName: "student",
                password: "password",
                role: RoleType.STUDENT
        ).save()

        User mentor = new User(
                emailAddress: "mentor@projectstartup.com",
                firstName: "mentor",
                lastName: "mentor",
                password: "password",
                role: RoleType.MENTOR
        ).save()

        User adjudicator = new User(
                emailAddress: "adjudicator@projectstartup.com",
                firstName: "adjudicator",
                lastName: "adjudicator",
                password: "password",
                role: RoleType.ADJUDICATOR
        ).save()

        User tim = new User(
                 emailAddress: "tim.shier@instantafrica.com",
                 firstName: "Tim",
                 lastName: "Sh",
                 password: "12345",
                 role: RoleType.ADMIN
         ).save()


        /*
         *    --- PROJECTS ---
        */
        Project project1 = new Project(
                name: "Project One",
                startDate: new Date(),
                presentationDate: new Date()
        ).save()


        /*
         *    --- CONTACTS ---
        */
        Contact lead = new Contact(
                user: student,
                role: RoleType.STUDENT,
                position: RolePosition.LEAD,
                project: project1
        ).save()

        Contact member = new Contact(
                user: student2,
                role: RoleType.STUDENT,
                position: RolePosition.MEMBER,
                project: project1
        ).save()

    }
    def destroy = {
    }
}
