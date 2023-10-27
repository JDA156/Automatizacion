Feature: Post user restful

  Scenario: Post a user
    Given url "https://restful-booker.herokuapp.com/auth"
    And header Content-Type = 'application/json'
    And request {"username" : "admin", "password" : "password123"}
    When method Post
    Then status 200
    And print response
