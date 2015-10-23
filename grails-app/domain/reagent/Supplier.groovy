package reagent

/**
 * Supplier
 * A domain class describes the data object and it's mapping to the database
 */
class Supplier extends Party {

    static mapping = {
    }

    static constraints = {
        name()
        web()
        approvalReport()
        approvedOn()
        approvalExpiresOn()
        accountNumber()
    }

    String accountNumber
    /*
     * Methods of the Domain Class
     */
    @Override	// Override toString for a nicer / more descriptive UI
    public String toString() {
        return "${name}";
    }
}
