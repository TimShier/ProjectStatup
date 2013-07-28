package startupfunnel.app

class Question {
    String text
    Integer value
    String helpText
    Integer orderIndex = 0 // default order index.


    static belongsTo = [stage:Stage]

    static constraints = {
    }
}
