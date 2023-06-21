 @delete
  Feature: HeroKu API verification

  Background:
    * url 'https://restful-booker.herokuapp.com'
    * header Cookie = 'token=abc123'
    * header Authorization = 'Basic YWRtaW46cGFzc3dvcmQxMjM='
    * call read ('classpath:src/test/resources/TestData/data.json')

  Scenario: Delete a current booking
    And path '/booking/' + bookingidfordelete
    And method DELETE
    When status 201
    Then assert responseStatus == status.code201
    
    
    