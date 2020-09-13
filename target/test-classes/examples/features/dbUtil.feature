@ignore
Feature: database testing
    Background:   
        #* def config = { username: 'sa', password: '', url: 'jdbc:mysql://sqlurl.net:3306;databaseName=myDbName', driverClassName: 'com.microsoft.sqlserver.jdbc.SQLServerDriver' }
        * def config = { username: 'sa', password: '', url: 'jdbc:mysql://localhost:3306/sonoo', driverClassName: 'org.h2.Drivecom.mysql.jdbc.Driverr' }
        * def DbUtils = Java.type('examples.DbUtils')
        * def db = new DbUtils(config)
    
    Scenario: DB testing
    * def employees = db.readRows("select salary from office where name='aakash'")
