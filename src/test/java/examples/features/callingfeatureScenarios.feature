Feature: Calling feature files scenarios

@tag1
Scenario: Test 1
    * print 'test 1'

@tag2
Scenario: Test 2
    * print 'test 2'
    * def result = call read('callingfeatureScenarios.feature@tag1')
    * print result 