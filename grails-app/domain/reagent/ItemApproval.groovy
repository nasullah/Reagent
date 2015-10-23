package reagent

/**
 * ItemApproval
 * A domain class describes the data object and it's mapping to the database
 */
class ItemApproval {

    static hasMany = [approvalReport: String]
    static belongsTo = [reagent:Reagent]
    static constraints = {
        reagent()
        approvedOn()
        approvalExpiresOn(nullable: true)
        manufacturedItem()
    }

    Date approvedOn
    Date approvalExpiresOn
    ManufacturedItem manufacturedItem
    /*
     * Methods of the Domain Class
     */
	@Override	// Override toString for a nicer / more descriptive UI
	public String toString() {
		return "${approvedOn?.format('yyyy-MM-dd')}";
	}
}
