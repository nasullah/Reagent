<!-- 
This menu is used to show function that can be triggered on the content (an object or list of objects).
-->
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">
<%-- Only show the "Pills" navigation menu if a controller exists (but not for home) --%>
<g:if test="${	params.controller != null
			&&	params.controller != ''
			&&	params.controller != 'home'
            &&	params.controller != 'participant'
            &&	params.controller != 'sampleTrackingEvent'
}">


	<ul id="Menu" class="nav nav-pills margin-top-small">

		<g:set var="entityName" value="${message(code: params.controller+'.label', default: params.controller.substring(0,1).toUpperCase() + params.controller.substring(1).toLowerCase())}" />

        <g:if test="${ params.controller != 'solidSpecimen'}">
            <li class="${ params.action == "list" ? 'active' : '' }">
                <g:link action="list"><i class="glyphicon glyphicon-th-list"></i> <g:message code="default.list.label" args="[entityName]"/></g:link>
            </li>
        </g:if>

        <li class="${ params.action == "create" ? 'active' : '' }">
            <g:link action="create"><i class="glyphicon glyphicon-plus"></i> <g:message code="default.new.label"  args="[entityName]"/></g:link>
        </li>
		
	</ul>
</g:if>

<!--
This menu is used to show function that can be triggered on the content (an object or list of objects).
-->

<%-- Only show the "Pills" navigation menu if a controller exists (but not for home) --%>
<g:if test="${	params.controller != null
&&	params.controller == 'participant'

}">

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <ul id="Menu" class="nav nav-pills margin-top-small">

        <g:set var="entityName" value="${message(code: params.controller+'.label', default: params.controller.substring(0,1).toUpperCase() + params.controller.substring(1).toLowerCase())}" />

        <li class="${ params.action == "list" ? 'active' : '' }">
            <g:link action="list"><i class="glyphicon glyphicon-th-list"></i> <g:message code="default.list.label" args="[entityName]"/></g:link>
        </li>

        <li class="${ params.action == "create" ? 'active' : '' }">
            <g:link action="create"><i class="glyphicon glyphicon-plus"></i> <g:message code="default.new.label"  args="[entityName]"/></g:link>
        </li>

        <li class="">
            <li><a href="/GELdb/importparticipant"><span style="color:#46d010"><i class="glyphicon glyphicon-import"></i></span> Import Participant</a></li>
        </li>

        <li class=${ params.action == "listBloodFollowUp" ? 'active' : '' }>
            <g:link action="listBloodFollowUp"><span style="color:red"><i class="glyphicon glyphicon-warning-sign"></i></span> Follow up Blood</g:link>
        </li>

        <g:if test="${ params.action == 'show' || params.action == 'edit' }">
            <!-- the item is an object (not a list) -->
            <li class="${ params.action == "edit" ? 'active' : '' }">
                <g:link action="edit" id="${params.id}"><i class="glyphicon glyphicon-pencil"></i> <g:message code="default.edit.label"  args="[entityName]"/></g:link>
            </li>
            <li class="">
                <g:render template="/_common/modals/deleteTextLink"/>
            </li>
        </g:if>

    </ul>
</g:if>

<g:if test="${	params.controller != null
&&	params.controller == 'sampleTrackingEvent'

}">

    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet">
    <ul id="Menu" class="nav nav-pills margin-top-small">

    <g:set var="entityName" value="${message(code: params.controller+'.label', default: params.controller.substring(0,1).toUpperCase() + params.controller.substring(1).toLowerCase())}" />

    <li class="${ params.action == "list" ? 'active' : '' }">
        <g:link action="list"><i class="glyphicon glyphicon-th-list"></i> Sample Tracking Event List</g:link>
    </li>

    <li class="${ params.action == "create" ? 'active' : '' }">
        <g:link action="create"><i class="glyphicon glyphicon-plus"></i> Dispatch Sample</g:link>
    </li>

    <li class=${ params.action == "fluidSpecimenInTransit" ? 'active' : '' }>
        <g:link action="fluidSpecimenInTransit"><span style="color:red"><i class="glyphicon glyphicon-list"></i></span> Fluid Specimen in Transit</g:link>
    </li>

    <li class=${ params.action == "solidSpecimenInTransit" ? 'active' : '' }>
        <g:link action="solidSpecimenInTransit"><span style="color:red"><i class="glyphicon glyphicon-list"></i></span> Solid Specimen in Transit</g:link>
    </li>

    <li class="${ params.action == "createReceived" ? 'active' : '' }">
        <g:link action="createReceived"><i class="glyphicon glyphicon-plus"></i>  Receive Sample</g:link>
    </li>

    <g:if test="${ params.controller != 'solidSpecimen'}">
        <!-- the item is an object (not a list) -->
        <g:if test="${ params.action == 'show' || params.action == 'edit'}">
            <li class="${ params.action == "edit" ? 'active' : '' }">
                <g:link action="edit" id="${params.id}"><i class="glyphicon glyphicon-pencil"></i> <g:message code="default.edit.label"  args="[entityName]"/></g:link>
            </li>
            <li class="">
                <g:render template="/_common/modals/deleteTextLink"/>
            </li>
        </g:if>
    </g:if>

    </ul>
</g:if>

<g:if test="${ params.controller == 'solidSpecimen'}">
    <ul id="Menu" class="nav nav-pills margin-top-small">
        <li class="${ params.action == "list" ? 'active' : '' }">
            <g:link action="list"><i class="glyphicon glyphicon-th-list"></i> List Main Specimen</g:link>
        </li>
        <li class="${ params.action == "create" ? 'active' : '' }">
            <g:link action="create"><i class="glyphicon glyphicon-plus"></i> New Main Specimen</g:link>
        </li>
        <g:if test="${ params.controller == 'solidSpecimen' && params.action == 'show' || params.controller == 'solidSpecimen' && params.action == 'edit' }">
            <li class="${ params.action == "edit" ? 'active' : '' }">
                <g:link action="edit" id="${params.id}"><i class="glyphicon glyphicon-pencil"></i> Edit Main specimen</g:link>
            </li>
            <li class="">
                <g:render template="/_common/modals/deleteTextLink"/>
            </li>
        </g:if>
    </ul>
</g:if>



