
Feature: sample karate test script
  for help, see: https://github.com/intuit/karate/wiki/IDE-Support

  Background:
    * url 'https://reqres.in/'
    * def expectedResponse1 = read('result.json')
    * def expectedResponse2 = read('result1.json')
    * def feature = read('users copy.feature')
    * def result = call read('users copy.feature')

  Scenario: get all users and then get the first user by id    
    Given path 'api/users/2'
    When method get
    Then status 200
    #And match response == {"ad":{"company":"StatusCode Weekly","text":"A weekly newsletter focusing on software development, infrastructure, the server, performance, and the stack end of things.","url":"http:\/\/statuscode.org\/"},"data":{"last_name":"Weaver","id":2,"avatar":"https:\/\/s3.amazonaws.com\/uifaces\/faces\/twitter\/josephstein\/128.jpg","first_name":"Janet","email":"janet.weaver@reqres.in"}}
    And match response == expectedResponse1
    And match response.data.id == 2
    And match response.data.last_name != null
    * def name_value = response.data.name
    And match name_value == null
    * def first_name = result.response.data.first_name
    Then print 'first_name -----', first_name

  Scenario: get all users and then get the first user by id
    * def expectedResponse = read('result.json')
    Given path 'api/users/3'
    When method get
    Then status 200
     And match response == expectedResponse2