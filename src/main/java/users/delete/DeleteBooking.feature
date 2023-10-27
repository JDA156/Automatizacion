Feature: Delete users restful

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


