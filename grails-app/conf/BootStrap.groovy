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
        ).save(failOnError: true)

        User student = new User(
                emailAddress: "student@projectstartup.com",
                firstName: "student",
                lastName: "student",
                password: "password",
                role: RoleType.STUDENT
        ).save(failOnError: true)

        User student2 = new User(
                emailAddress: "student2@projectstartup.com",
                firstName: "student",
                lastName: "student",
                password: "password",
                role: RoleType.STUDENT
        ).save(failOnError: true)

        User mentor = new User(
                emailAddress: "mentor@projectstartup.com",
                firstName: "mentor",
                lastName: "mentor",
                password: "password",
                role: RoleType.MENTOR
        ).save(failOnError: true)

        User adjudicator = new User(
                emailAddress: "adjudicator@projectstartup.com",
                firstName: "adjudicator",
                lastName: "adjudicator",
                password: "password",
                role: RoleType.ADJUDICATOR
        ).save(failOnError: true)

        User tim = new User(
                 emailAddress: "tim.shier@instantafrica.com",
                 firstName: "Tim",
                 lastName: "Sh",
                 password: "12345",
                 role: RoleType.ADMIN
         ).save(failOnError: true)

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

        println "${project1.id} << Project ID. [bootstrap]"
        /*
         *    --- CONTACTS ---
        */
        Contact leadContact = new Contact(
                user: student,
                role: RoleType.STUDENT,
                position: RolePosition.LEAD,
                project: project1
        ).save(failOnError: true)

        Contact memberContact = new Contact(
                user: student2,
                role: RoleType.STUDENT,
                position: RolePosition.MEMBER,
                project: project1
        ).save(failOnError: true)

        Contact adjudicatorContact = new Contact(
                user: adjudicator,
                role: RoleType.ADJUDICATOR,
                position: RolePosition.LEAD,
                project: project1
        ).save(failOnError: true)

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

        Stage stage2 = new Stage(
                status: StageStatus.ACTIVE,
                startDate: new Date(),
                endDate: new Date(),
                deadline: new Date(),
                title: "Stage Two (fight too)",
                description: "This is the second stage",
                skeleton: projectSkeleton,
                orderIndex: 1
        ).save(failOnError: true)


        /*
         *    --- QUESTIONS ---
        */
        Question question1 = new Question(
                text: "Is this Question 1?",
                value: 10,
                helpText: "Answer the question",
                stage: stage1
        ).save(failOnError: true)

        Question question2 = new Question(
                text: "Ron Burgundy?",
                value: 20,
                helpText: "Answer the question2",
                stage: stage1,
                orderIndex: 1
        ).save(failOnError: true)

        /*
         *    --- ANSWERS ---
        */
        Answer answer1 = new Answer(
                text: "yes",
                project: project1,
                createdBy: student,
                question: question1
        ).save(failOnError: true)

        Answer answer2 = new Answer(
                text: "no",
                project: project1,
                versionNumber: 1,
                createdBy: student,
                question: question1
        ).save(failOnError: true)

        Answer answer3 = new Answer(
                text: "maybe",
                project: project1,
                versionNumber: 2,
                createdBy: student,
                question: question1
        ).save(failOnError: true)

        Answer answer4 = new Answer(
                text: "only when in doubt.",
                project: project1,
                createdBy: student,
                question: question2
        ).save(failOnError: true)

        /*
         *    --- SCORES ---
        */
        Score score1 = new Score(
                createdBy: mentor,
                feedback: "rad. dug it.",
                value: 8,
                answer: answer3
        ).save(failOnError: true)

        Score score2 = new Score(
                createdBy: adjudicator,
                feedback: "horrible..",
                value: 1,
                answer: answer3
        ).save(failOnError: true)

        Score score3 = new Score(
                createdBy: mentor,
                feedback: "decent.",
                value: 5,
                answer: answer2
        ).save(failOnError: true)

    }
    def destroy = {
    }
}
