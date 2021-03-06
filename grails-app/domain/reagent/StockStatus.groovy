package reagent

/**
 * StockStatus
 * A domain class describes the data object and it's mapping to the database
 */
class StockStatus {

    static constraints = {
        stockStatusName()
    }

    String stockStatusName
    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${stockStatusName}";
	}
}
