package startupfunnel.app.enums

enum RolePosition {

    LEAD("Lead"),
    MEMBER("Member")

    String id

    private RolePosition(String id) {
        this.id = id
    }

    String toString() {
        id
    }
}
