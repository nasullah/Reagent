package reagent

/**
 * ExpiryPolicy
 * A domain class describes the data object and it's mapping to the database
 */
class ExpiryPolicy {

    static constraints = {
        expiryPolicyName()
    }

    String expiryPolicyName
    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${expiryPolicyName}";
	}
}
