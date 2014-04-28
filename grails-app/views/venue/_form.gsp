<%@ page import="uk.ac.shu.webarch.mylistings.Venue" %>



<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'events', 'error')} ">
	<label for="events">
		<g:message code="venue.events.label" default="Events" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${venueInstance?.events?}" var="e">
    <li><g:link controller="event" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="event" action="create" params="['venue.id': venueInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'event.label', default: 'Event')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'venueAddress', 'error')} ">
	<label for="venueAddress">
		<g:message code="venue.venueAddress.label" default="Venue Address" />
		
	</label>
	<g:textField name="venueAddress" value="${venueInstance?.venueAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'venueName', 'error')} ">
	<label for="venueName">
		<g:message code="venue.venueName.label" default="Venue Name" />
		
	</label>
	<g:textField name="venueName" value="${venueInstance?.venueName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'venuePostCode', 'error')} ">
	<label for="venuePostCode">
		<g:message code="venue.venuePostCode.label" default="Venue Post Code" />
		
	</label>
	<g:textField name="venuePostCode" value="${venueInstance?.venuePostCode}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'venueTelephone', 'error')} ">
	<label for="venueTelephone">
		<g:message code="venue.venueTelephone.label" default="Venue Telephone" />
		
	</label>
	<g:textField name="venueTelephone" value="${venueInstance?.venueTelephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: venueInstance, field: 'venueWebsite', 'error')} ">
	<label for="venueWebsite">
		<g:message code="venue.venueWebsite.label" default="Venue Website" />
		
	</label>
	<g:textField name="venueWebsite" value="${venueInstance?.venueWebsite}"/>
</div>

