package reagent

/**
 * POStatus
 * A domain class describes the data object and it's mapping to the database
 */
class POStatus {

    static constraints = {
        pOStatusName()
    }

    String pOStatusName
    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${pOStatusName}";
	}
}
