@ignore 
Feature: post request method if other feature file is running it

Scenario: Post method test
Given url 'https://reqres.in/api/users'
And headers {Content-Type: 'application/json', Accept: 'application/json'}
And request '{ "name": "Aakash", "job":"leader"}'
When method post
Then status 201

Scenario: Access token
Given url 'https://reqres.in/api/users'
And path 'toke'
And form field grant_type = ''
And form field client_id = '#client_id'
And form field client_secret = '#client_secret'
When method post
Then status 200
* def accesstoken = response.access_toke
Given path ''
And header Authorization = 'Bearer' + accesstoken