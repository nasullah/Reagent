package reagent

/**
 * MovementType
 * A domain class describes the data object and it's mapping to the database
 */
class MovementType {

    static constraints = {
        movementTypeName()
    }

    String movementTypeName

    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${movementTypeName}";
	}
}
