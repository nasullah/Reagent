package reagent

/**
 * UnitsOfMeasure
 * A domain class describes the data object and it's mapping to the database
 */
class UnitsOfMeasure {

    static constraints = {
        units()
    }

    String units

    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${units}";
	}
}
