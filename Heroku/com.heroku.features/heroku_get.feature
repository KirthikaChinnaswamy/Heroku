@get_heroku @test
Feature: HeroKu API verification

  Background:
    * url 'https://restful-booker.herokuapp.com/booking'
    * header Accept = 'application/json'
    * call read ('classpath:src/test/resources/TestData/data.json')

  Scenario: verify response with all booking id
    Given method get
    When status 200
    And match $ contains { bookingid:"#number" }
    Then assert responseStatus == 200
    * def bookingid = response.bookingid


  Scenario: verify response for specific booking id
    Given path '/1'
    When method get
    When status 200
    And match $ contains { firstname:"#string" }
    And match $ contains { lastname:"#string" }
    And match $ contains { totalprice:"#number" }
    And match $ contains { depositpaid:"#boolean" }
    And match $ contains { bookingdates:"#object" }
    * def date = new java.text.SimpleDateFormat("MM-dd-yyyy")
    * def expected = { checkin:"#notnull",checkout: "#notnull"}
    And match $ contains { bookingdates:'#(^^expected)'}
    Then assert responseStatus == 200

  Scenario: verify response for specific booking id
    Given path '/1'
    When method get
    When status 200