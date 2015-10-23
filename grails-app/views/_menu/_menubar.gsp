<sec:ifAnyGranted roles="ROLE_ADMIN,ROLE_USER">
    <ul class="nav nav-tabs">

        <li>
            <g:link controller="reagent" action="index">Reagent</g:link>
        </li>

        <li>
            <g:link controller="stockTransaction" action="index">Stock Transaction</g:link>
        </li>

        <li>
            <g:link controller="purchaseOrder" action="index">Purchase Order</g:link>
        </li>

    </ul>
</sec:ifAnyGranted>