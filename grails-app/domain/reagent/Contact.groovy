package reagent

class Contact {

    static  belongsTo = [party:Party]
    static constraints = {
        party()
        name()
        email()
        role()
        telephone()
    }

    String name
    String email
    String role
    String telephone
}
