Feature: Validating Place API's

@AddPlace
Scenario Outline: Verify if Place is being Successfully added using AddPlaceAPI
    Given Add Place Payload "<name>" "<language>" "<address>"
    When user calls "addPlaceAPI" with "Post" http request
    Then the API call is success with status code 200
    And "status" in response body is "OK"
    And "scope" in response body is "APP"
    And verify place Id created  maps to "<name>" using "getPlaceAPI"
    
Examples:
	|name      | language  |address          |
	|Eggoholic | Gujarati  |CN Tower         |
#	|BBhouse   | Hindi     |Sardar Patel     |
	

@DeletePlace
Scenario: Verify if Delete Place functionality is working
     
     Given DeletePlace Payload
     When user calls "deletePlaceAPI" with "Post" http request
     Then the API call is success with status code 200
     And "status" in response body is "OK"