<%@ page import="uk.ac.shu.webarch.mylistings.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'endTime', 'error')} ">
	<label for="endTime">
		<g:message code="event.endTime.label" default="End Time" />
		
	</label>
	<g:textField name="endTime" value="${eventInstance?.endTime}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventDate', 'error')} required">
	<label for="eventDate">
		<g:message code="event.eventDate.label" default="Event Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="eventDate" precision="day"  value="${eventInstance?.eventDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventName', 'error')} ">
	<label for="eventName">
		<g:message code="event.eventName.label" default="Event Name" />
		
	</label>
	<g:textField name="eventName" value="${eventInstance?.eventName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="event.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: eventInstance, field: 'price')}" required=""/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'promoter', 'error')} required">
	<label for="promoter">
		<g:message code="event.promoter.label" default="Promoter" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="promoter" name="promoter.id" from="${uk.ac.shu.webarch.mylistings.Promoter.list()}" optionKey="id" required="" value="${eventInstance?.promoter?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'startTime', 'error')} ">
	<label for="startTime">
		<g:message code="event.startTime.label" default="Start Time" />
		
	</label>
	<g:textField name="startTime" value="${eventInstance?.startTime}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'venue', 'error')} required">
	<label for="venue">
		<g:message code="event.venue.label" default="Venue" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="venue" name="venue.id" from="${uk.ac.shu.webarch.mylistings.Venue.list()}" optionKey="id" required="" value="${eventInstance?.venue?.id}" class="many-to-one"/>
</div>

