Feature: User details

Scenario: First Karate test
Given url 'https://reqres.in/api/users/2'
When method GET
Then status 200