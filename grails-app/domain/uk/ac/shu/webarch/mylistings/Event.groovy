package uk.ac.shu.webarch.mylistings

class Event {

	String eventName
	Date eventDate
	Double price
	String startTime
	String endTime

	Venue classVenue
	Promoter classPromoter

    static constraints = {
    }
 
	static mapping = {
		table 'event'
		classVenue column: 'venue_fk'
		classPromoter column: 'promoter_fk'
		}
}
