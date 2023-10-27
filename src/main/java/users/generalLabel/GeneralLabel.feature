Feature: Booking API Tests

  Scenario: Post a user
    Given url "https://restful-booker.herokuapp.com/auth"
    And header Content-Type = 'application/json'
    And request {"username" : "admin", "password" : "password123"}
    When method Post
    Then status 200
    And print response


  Scenario: Create Booking 1
    Given url "https://restful-booker.herokuapp.com" + "/booking"
    And request {"firstname" : "Pedro","lastname" : "Gutierrez","totalprice" : 100,"depositpaid" : true,"bookingdates" : {"checkin" : "2023-03-01","checkout" : "2023-04-01"},"additionalneeds" : "Comics"}
    And header Accept = 'application/json'
    When method Post
    Then status 200

    And print response

    And assert response.booking.firstname == "Pedro"

  Scenario: Create Booking 2
    Given url "https://restful-booker.herokuapp.com" + "/booking"
    And request {"firstname" : "Javier","lastname" : "Jaramillo","totalprice" : 356,"depositpaid" : true,"bookingdates" : {"checkin" : "2023-03-15","checkout" : "2023-04-15"},"additionalneeds" : "Terror"}
    And header Accept = 'application/json'
    When method Post
    Then status 200

    And print response

    And assert response.booking.firstname == "Javier"

  Scenario: Get id1
    Given url "https://restful-booker.herokuapp.com/booking"+ "?firstname=Pedro" + "&lastname=Gutierrez"
    When method Get
    Then status 200
    And print response

  Scenario: Get id2
    Given url "https://restful-booker.herokuapp.com/booking"+ "?firstname=Javier" + "&lastname=Jaramillo"
    When method Get
    Then status 200
    And print response

  Scenario: Get list user by id1
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + "279"
    And header Accept = 'application/json'
    When method Get
    Then status 200
    And print response


  Scenario: Get list user by id2
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + "284"
    And header Accept = 'application/json'
    When method Get
    Then status 200
    And print response


  Scenario: Put user 1
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + "1834"
    And request {"firstname" : "Jose","lastname" : "Gutierrez","totalprice" : 100,"depositpaid" : true,"bookingdates" : {"checkin" : "2023-05-12","checkout" : "2023-06-28"},"additionalneeds" : "Comics"}
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    And header Cookie = 'token=8a4878a00808151'
    When method Put
    Then status 200
    And print response

  Scenario: Put user 2
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + "1839"
    And request {"firstname" : "Javier","lastname" : "Mora","totalprice" : 356,"depositpaid" : true,"bookingdates" : {"checkin" : "2023-06-20","checkout" : "2023-07-20"},"additionalneeds" : "Terror"}
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    And header Cookie = 'token=8a4878a00808151'
    When method Put
    Then status 200
    And print response

  Scenario: Delete a user 1
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + "1834"
    And header Accept = 'application/json'
    And header Cookie = 'token=8a4878a00808151'
    When method Delete
    Then status 201
    And print response

  Scenario: Delete a user 2
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + "1839"
    And header Accept = 'application/json'
    And header Cookie = 'token=8a4878a00808151'
    When method Delete
    Then status 201
    And print response