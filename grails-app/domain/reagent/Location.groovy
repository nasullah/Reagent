package reagent

/**
 * Location
 * A domain class describes the data object and it's mapping to the database
 */
class Location {

    static mapping = {
        notes type: "text"
    }
    static constraints = {
        identifier()
        description()
        notes(nullable: true,  widget: 'textarea')
    }

    String identifier
    String description
    String notes
    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${identifier}";
	}
}
