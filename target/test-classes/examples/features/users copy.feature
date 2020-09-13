Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/'
    * def expectedResponse2 = read('result1.json')
    
  Scenario: get all users and then get the first user by id
    * def expectedResponse = read('result.json')
    Given path 'api/users/3'
    When method get
    Then status 200
     And match response == expectedResponse2