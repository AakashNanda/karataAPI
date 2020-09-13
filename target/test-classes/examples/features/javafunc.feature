Feature: Outside non static java functions

Scenario: test outside function calling
    * def javaDemo = Java.type('examples.NonStaticFunction')
    * def result = new javaDemo().nonStaticFunc("Ankita");
    Then print 'result -- ', result
    * def result1 = javaDemo.staticFunc("Aakash");
  	Then print 'result1 -- ', result1
    * def writeData = Java.type('examples.WriteData')
    * def result1 = new writeData().writeData("Hurraahh");