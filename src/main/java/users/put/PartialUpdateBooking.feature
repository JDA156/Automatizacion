Feature: Put PartialUpdate user restful

  Scenario: Patch user
    Given url "https://restful-booker.herokuapp.com" + "/booking/" + "1834"
    And request {"firstname" : "Juan","lastname" : "Davila"}
    And header Content-Type = 'application/json'
    And header Accept = 'application/json'
    And header Cookie = 'token=8a4878a00808151'
    When method Patch
    Then status 200
    And print response