Feature: Get users restful

  Scenario: Get a users
    Given url "https://restful-booker.herokuapp.com/booking"
    When method Get
    Then status 200
    And print response