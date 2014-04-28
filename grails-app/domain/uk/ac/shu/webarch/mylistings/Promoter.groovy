package uk.ac.shu.webarch.mylistings

class Promoter {

    String promoterName
    String promterEmail
    String promoterTelephone
    String promoterWebsite

    static constraints = {
    }

	static hasMany = [classes: Event]
	static mappedBy = [classes; 'Promoter']

	static mapping = {
	table 'Promoter'
	}
}
