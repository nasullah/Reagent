package reagent

/**
 * StockTransaction
 * A domain class describes the data object and it's mapping to the database
 */
class StockTransaction {

    static mapping = {
        notes type: "text"
    }
    static belongsTo = [reagent:Reagent]
    static constraints = {
        purchaseOrder()
        transactionDate()
        transactionUser()
        direction()
        quantity()
        type()
        batchIdentifier()
        itemIdentifier()
        status()
        dateOpened()
        expiryDate()
        notes(nullable: true,  widget: 'textarea')
    }

    PurchaseOrder purchaseOrder
    Date transactionDate
    String transactionUser
    Direction direction
    Double quantity
    MovementType type
    String batchIdentifier
    String itemIdentifier
    StockStatus status
    Date dateOpened
    Date expiryDate
    String notes

    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${transactionDate}";
	}
}
