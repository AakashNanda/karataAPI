@ignore
Feature: Function creation

    Background: 
    * def myfun = function() { return 'Aakash'}
    * def myfundata = call myfun
    * def myfun1 = 
    """
    function() {
        return 'nanda'
    }
    """
    Scenario: function results
    * def myfundata1 = call myfun1
    When print '-----functiondata', myfundata1
    * def sleep = 
    """
    function(seconds) {
        for (i=0; i< seconds; i++) {
            java.lang.Thread.sleep(1*1000);
        }
    }
    """
    * call sleep 5