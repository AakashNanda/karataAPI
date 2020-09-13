@ignore
Feature: pass parameter into another feature file

Background:
    * def myFeature = call read ('usercopyPostReq.feature') {client_id: 'aakash', client_secret: 'nanda'}
    * def tokenValue = myFeature.accesstoken
