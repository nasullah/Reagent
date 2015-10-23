package reagent

/**
 * PurchaseOrder
 * A domain class describes the data object and it's mapping to the database
 */
class PurchaseOrder {

    static constraints = {
        supplier()
        oraclePONumber()
        orderDate()
        expectedDate()
        orderStatus()
        orderedBy()
    }

    String oraclePONumber
    Date orderDate
    Date expectedDate
    POStatus orderStatus
    String orderedBy
    Supplier supplier

    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${oraclePONumber}";
	}
}
