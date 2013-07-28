package startupfunnel.app.enums

enum StageStatus {
    INACTIVE("Inactive"),
    ACTIVE("Active"),
    COMPLETE("Complete")

    String id

    private StageStatus(String id) {
        this.id = id
    }

    String toString() {
        id
    }
}
