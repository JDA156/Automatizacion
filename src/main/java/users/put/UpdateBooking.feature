Feature: Put user restful

  Scenario: Put user
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