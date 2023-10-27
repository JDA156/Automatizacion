Feature: Post bookings

  Background:
    * url "https://restful-booker.herokuapp.com"
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'


  Scenario: Create Booking 1
    Given path "/booking"
    And request {"firstname" : "Pedro","lastname" : "Gutierrez","totalprice" : 100,"depositpaid" : true,"bookingdates" : {"checkin" : "2023-03-01","checkout" : "2023-04-01"},"additionalneeds" : "Comics"}
    When method Post
    Then status 200

    And print response

    And assert response.booking.firstname == "Pedro"

  Scenario: Create Booking 2
    Given path "/booking"
    And request {"firstname" : "Javier","lastname" : "Jaramillo","totalprice" : 356,"depositpaid" : true,"bookingdates" : {"checkin" : "2023-03-15","checkout" : "2023-04-15"},"additionalneeds" : "Terror"}
    When method Post
    Then status 200

    And print response

    And assert response.booking.firstname == "Javier"