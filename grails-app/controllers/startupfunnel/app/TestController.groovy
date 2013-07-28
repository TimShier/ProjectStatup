package startupfunnel.app

class TestController {

    def index() {
        def users = User.findAll()
        def projects = Project.findAll()

        println users
        println projects

        projects.each {
            println it.properties
            it.contacts.each{
                println it.properties
            }
        }
    }
}
