package startupfunnel.app.enums

enum RoleType {
    STUDENT("Student"),
    MENTOR("Mentor"),
    ADJUDICATOR("Adjudicator"),
    ADMIN("Admin")
    // student < mentor < adjudicator < admin.

    String id

    private RoleType(String id) {
        this.id = id
    }

    String toString() {
        id
    }

}

