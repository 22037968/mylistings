package uk.ac.shu.webarch.mylistings

class Promoter {

    String promoterName
    String promterEmail
    String promoterTelephone
    String promoterWebsite

    static constraints = {
    }

	static hasMany = [events: Event]
	static mappedBy = [events: 'promoter']


}
