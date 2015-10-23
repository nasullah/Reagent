package reagent

class Party {

    static hasMany = [contact:Contact]
    static constraints = {
        name()
        web()
        approvalReport()
        approvedOn()
        approvalExpiresOn()
    }

    String name
    String web
    String approvalReport
    Date approvedOn
    Date approvalExpiresOn
}
