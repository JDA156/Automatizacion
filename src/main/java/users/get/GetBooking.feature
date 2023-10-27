Feature: Get users restful

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
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + "2548"
    And header Accept = 'application/json'
    When method Get
    Then status 200
    And print response

  Scenario: Get list user by id2
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + "2553"
    And header Accept = 'application/json'
    When method Get
    Then status 200
    And print response
