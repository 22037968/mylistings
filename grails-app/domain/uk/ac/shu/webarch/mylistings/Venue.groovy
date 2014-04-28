package uk.ac.shu.webarch.mylistings

class Venue {

    String venueName
    String venueAddress
    String venuePostCode
    String venueWebsite
    String venueTelephone

    static constraints = {
    }
	static hasMany = [classes: Event]
	static mappedBy = [classes; 'Venue']

	static mapping = {
	table 'Venue'
	}
}
