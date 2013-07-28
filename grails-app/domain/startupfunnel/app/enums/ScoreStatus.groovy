package startupfunnel.app.enums

/**
 * Created with IntelliJ IDEA.
 * User: Tim Shier
 * Date: 2013/07/28
 * Time: 11:18 PM
 * To change this template use File | Settings | File Templates.
 */
enum ScoreStatus {
    UNDERREVIEW("Under Review"),
    APPROVED("Approved"),
    REJECTED("Rejected")

    String id

    private ScoreStatus(String id) {
        this.id = id
    }

    String toString() {
        id
    }

}
