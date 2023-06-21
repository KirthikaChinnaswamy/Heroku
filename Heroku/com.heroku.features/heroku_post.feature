@post @test
Feature: HeroKu API verification

  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'

    * call read ('classpath:src/test/resources/TestData/data.json')

  Scenario: create a new auth token to use for access to the PUT and DELETE
    And path '/auth'
    Given def value = login
    And request value
    And method POST
    When status 200
    And match $ contains { token:"#string" }
    Then assert responseStatus == 200
    

     Scenario: create a new booking
       And path '/booking'
       And print  input.data[1]
       Given def value = input.data[1]
       And request value
       And method POST
       And print response
       When status 200
       Then assert responseStatus == 200
       * def getbookingid = response.bookingid
      * def createResponse = call read('heroku_put.feature') {'bookingid' : '#(getbookingid)'}


    
    