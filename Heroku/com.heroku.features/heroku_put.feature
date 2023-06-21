@put
Feature: HeroKu API verification

  Background: 
    * url 'https://restful-booker.herokuapp.com'
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * header Authorization = 'Basic YWRtaW46cGFzc3dvcmQxMjM='
    * call read ('classpath:src/test/resources/TestData/data.json')
    
  Scenario: Updates a current booking
    * def patchbookingid = bookingid
    And path '/booking/' + bookingid
    Given def value = input.data[0]
    And request value
    And method PUT
    When status 200

    Then assert responseStatus == status.code200
    * def createResponse = call read('heroku_patch.feature') {'bookingidforpatch' : '#(patchbookingid)'}

