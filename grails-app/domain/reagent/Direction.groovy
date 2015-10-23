package reagent

/**
 * Direction
 * A domain class describes the data object and it's mapping to the database
 */
class Direction {

    static constraints = {
        directionName()
    }

    String directionName

    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${directionName}";
	}
}
