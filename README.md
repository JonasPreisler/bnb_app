# Hometime Skills Assessment


# POST REQUEST

Copy/paste the payloads below (copy/pasted from assignment description) and POST to the online or local app:

http://g287.hatchboxapp.com/api/reservations

...or... 

[YOUR-NGROK-LINK]/api/reservations
(remember to add your ngrok link in 'config.hosts' in application.rb)

--------------------------------------------------

New reservation will always be created. 

If you POST with an email that already exists in the Guest table, only a reservation will be created, belonging to that guest.

If email doesn't exist, a new guest will be created. 

See the data created on http://g287.hatchboxapp.com/.

--------------------------------------------------

# PAYLOAD 1

{
	"reservation": {
		"start_date": "2020-03-12",
		"end_date": "2020-03-16",
		"expected_payout_amount": "3800.00",
		"guest_details": {
			"localized_description": "4 guests",
			"number_of_adults": 2,
			"number_of_children": 2,
			"number_of_infants": 0
		},
		"guest_email": "wayne_woodbridge@bnb.com",
		"guest_first_name": "Wayne",
		"guest_id": 1,
		"guest_last_name": "Woodbridge",
		"guest_phone_numbers": ["6329123456789","63912345fds6789"],
		"listing_security_price_accurate": "500.00",
		"host_currency": "AUD",
		"nights": 4,
		"number_of_guests": 4,
		"status_type": "accepted",
		"total_paid_amount_accurate": "4500.00"
	}
}

# PAYLOAD 2

{
	"start_date": "2020-03-12",
	"end_date": "2020-03-16",
	"nights": 4,
	"guests": 4,
	"adults": 2,
	"children": 2,
	"infants": 0,
	"status": "accepted",
	"guest": {
		"id": 1,
		"first_name": "Wayne",
		"last_name": "Woodbridge",
		"phone": "639123456789",
		"email": "wayne_woodbridge@bnb.com"
	},
	"currency": "AUD",
	"payout_price": "3800.00",
	"security_price": "500",
	"total_price": "4500.00"
}

--------------------------------------------------

# OTHER NOTES

I would probably create these two associated tables, instead of creating them as strings:
	•	currency
	•	phone_numbers


I think there’s an error in payload 1, last line. The comma in the end should be removed:
"total_paid_amount_accurate": "4500.00”,


The Guest.phone_number update is only working if payload 1 remains an array and payload 2 remains NOT an array.

If an existing guest is creating a reservation, the guest's details will NOT be updated (except phone numbers).


--------------------------------------------------

heypreisler@gmail.com

