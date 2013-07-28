import startupfunnel.app.User

class BootStrap {

    def init = { servletContext ->
        setupForLocal()
    }
    def destroy = {
    }

    def setupForLocal(){
        // do basic local bootstrap. All the shit and the kitchen sink.

        //User tim = new User(emailAddress: "tim.shier@instantafrica.com", "Timbo", "Shier","12345", role:)

        /*
        * String emailAddress
    String firstName
    String lastName
    String password // encrypted.



    RoleTypeEnum role
        *
        * */
    }
}
