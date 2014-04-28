package uk.ac.shu.webarch.mylistings

class Venue {

    String venueName
    String venueAddress
    String venuePostCode
    String venueWebsite
    String venueTelephone

    static constraints = {
    }
	static hasMany = [events: Event]
	static mappedBy = [events: 'venue']


}
