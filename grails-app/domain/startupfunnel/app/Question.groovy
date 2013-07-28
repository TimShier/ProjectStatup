package startupfunnel.app

class Question {
    String text
    Integer value
    String helpText


    static belongsTo = [stage:Stage]

    static constraints = {
    }
}
