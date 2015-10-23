package reagent

/**
 * Reagent
 * A domain class describes the data object and it's mapping to the database
 */
class Reagent {

    static mapping = {
        notes type: "text"
    }
    static hasMany = [itemApprovals:ItemApproval, stockTransactions:StockTransaction]
    static constraints = {
        identifier()
        name()
        minimumStock()
        maximumStock()
        reorderQuality()
        expiryPolicy()
        storageTemperature()
        coshhAssessment()
        notes(nullable: true,  widget: 'textarea')
        unit()
    }

    String identifier
    String name
    Double minimumStock
    Double maximumStock
    Double reorderQuality
    ExpiryPolicy expiryPolicy
    Double storageTemperature
    String coshhAssessment
    String notes
    UnitsOfMeasure unit
    /*
     * Methods of the Domain Class
     */
//	@Override	// Override toString for a nicer / more descriptive UI 
	public String toString() {
		return "${name} ${identifier}";
	}
}
