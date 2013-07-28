import startupfunnel.app.ProjectSkeleton
import startupfunnel.app.User
import startupfunnel.app.enums.RolePosition
import startupfunnel.app.enums.RoleType
import startupfunnel.app.Project
import startupfunnel.app.Contact
import startupfunnel.app.Question
import startupfunnel.app.Stage
import startupfunnel.app.enums.StageStatus
import startupfunnel.app.Answer
import startupfunnel.app.Score

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
         *    --- PROJECT SKELETON ---
        */
        ProjectSkeleton projectSkeleton = new ProjectSkeleton(
                name: "Standard template",
                createdBy: admin
        ).save(failOnError: true)

        /*
         *    --- PROJECTS ---
        */
        Project project1 = new Project(
                name: "Project One",
                startDate: new Date(),
                skeleton: projectSkeleton,
                presentationDate: new Date() + 200 // in 200 days time.
        ).save(failOnError: true)


        /*
         *    --- CONTACTS ---
        */
        Contact leadContact = new Contact(
                user: student,
                role: RoleType.STUDENT,
                position: RolePosition.LEAD,
                project: project1
        ).save()

        Contact memberContact = new Contact(
                user: student2,
                role: RoleType.STUDENT,
                position: RolePosition.MEMBER,
                project: project1
        ).save()

        Contact adjudicatorContact = new Contact(
                user: adjudicator,
                role: RoleType.ADJUDICATOR,
                position: RolePosition.LEAD,
                project: project1
        ).save()

        /*
         *    --- STAGES ---
        */
        Stage stage1 = new Stage(
                status: StageStatus.ACTIVE,
                startDate: new Date(),
                endDate: new Date(),
                deadline: new Date(),
                title: "Stage One (fight)",
                description: "This is the first stage",
                skeleton: projectSkeleton
        ).save(failOnError: true)


        /*
         *    --- QUESTIONS ---
        */
        Question question1 = new Question(
                text: "Is this Question 1?",
                value: 10,
                helpText: "Answer the question",
                stage: stage1
        ).save()

        Question question2 = new Question(
                text: "Ron Burgundy?",
                value: 20,
                helpText: "Answer the question2",
                stage: stage1,
                orderIndex: 1
        ).save()

        /*
         *    --- ANSWERS ---
        */
        Answer answer1 = new Answer(
                text: "yes",
                project:project1
        ).save()

        Answer answer2 = new Answer(
                text: "no",
                project:project1,
                versionNumber: 1
        ).save()

        Answer answer3 = new Answer(
                text: "maybe",
                project:project1,
                versionNumber: 2
        ).save()

        Answer answer4 = new Answer(
                text: "only when in doubt.",
                project:project1,
        ).save()

        /*
         *    --- SCORES ---
        */
        Score score1 = new Score(
                createdBy: mentor,
                feedback: "rad. dug it.",
                value: 8,
                answer: answer3
        ).save()

        Score score2 = new Score(
                createdBy: adjudicator,
                feedback: "horrible..",
                value: 1,
                answer: answer3
        ).save()

        Score score3 = new Score(
                createdBy: mentor,
                feedback: "decent.",
                value: 5,
                answer: answer2
        ).save()

    }
    def destroy = {
    }
}
