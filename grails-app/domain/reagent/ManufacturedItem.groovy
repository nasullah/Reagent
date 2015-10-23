package reagent

/**
 * ManufacturedItem
 * A domain class describes the data object and it's mapping to the database
 */
class ManufacturedItem {

    static hasOne = [itemApproval:ItemApproval]
    static constraints = {
        manufacturer()
        supplier()
        itemApproval(nullable: true)
        itemNumber()
        itemName()
        minimumOrderQuantity()
        cost()
        deliveryTimDays()
    }

    Manufacturer manufacturer
    Supplier supplier
    String itemNumber
    String itemName
    Double minimumOrderQuantity
    Double cost
    Integer deliveryTimDays
    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${itemName}";
	}
}
