@patch
Feature: HeroKu API verification

  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Content-Type = 'application/json'
    * header Accept = 'application/json'
    * header Authorization = 'Basic YWRtaW46cGFzc3dvcmQxMjM='
    * call read ('classpath:src/test/resources/TestData/data.json')

  Scenario:  Patch Updates a current booking
    * def deletebookingid = bookingidforpatch
    And print deletebookingid
    And path '/booking/' + bookingidforpatch
    Given def value = patchdata
    And request value
    And method PATCH
    When status 200
    And print response
    Then assert responseStatus == status.code200
    * def createResponse = call read('heroku_delete.feature') {'bookingidfordelete' : '#(deletebookingid)'}