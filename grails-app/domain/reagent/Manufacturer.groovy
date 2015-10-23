package reagent

/**
 * Manufacturer
 * A domain class describes the data object and it's mapping to the database
 */
class Manufacturer extends Party {

    static mapping = {
    }

    static constraints = {
        name()
        web()
        approvalReport()
        approvedOn()
        approvalExpiresOn()
    }

    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${name}";
	}
}
