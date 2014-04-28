<%@ page import="uk.ac.shu.webarch.mylistings.Promoter" %>



<div class="fieldcontain ${hasErrors(bean: promoterInstance, field: 'events', 'error')} ">
	<label for="events">
		<g:message code="promoter.events.label" default="Events" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${promoterInstance?.events?}" var="e">
    <li><g:link controller="event" action="show" id="${e.id}">${e?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="event" action="create" params="['promoter.id': promoterInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'event.label', default: 'Event')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: promoterInstance, field: 'promoterName', 'error')} ">
	<label for="promoterName">
		<g:message code="promoter.promoterName.label" default="Promoter Name" />
		
	</label>
	<g:textField name="promoterName" value="${promoterInstance?.promoterName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: promoterInstance, field: 'promoterTelephone', 'error')} ">
	<label for="promoterTelephone">
		<g:message code="promoter.promoterTelephone.label" default="Promoter Telephone" />
		
	</label>
	<g:textField name="promoterTelephone" value="${promoterInstance?.promoterTelephone}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: promoterInstance, field: 'promoterWebsite', 'error')} ">
	<label for="promoterWebsite">
		<g:message code="promoter.promoterWebsite.label" default="Promoter Website" />
		
	</label>
	<g:textField name="promoterWebsite" value="${promoterInstance?.promoterWebsite}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: promoterInstance, field: 'promterEmail', 'error')} ">
	<label for="promterEmail">
		<g:message code="promoter.promterEmail.label" default="Promter Email" />
		
	</label>
	<g:textField name="promterEmail" value="${promoterInstance?.promterEmail}"/>
</div>

