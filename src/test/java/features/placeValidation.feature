Feature: Validating place API's

Scenario Outline: verify if place is being sucessfully added using Add place API
Given Add place payload
When user calls "AddPlaceAPI" with POST http request
Then the API call got scucess with status code  200
And "status" in response body is "ok"

Examples:
	|name 	 | language |address		   |
	|AAhouse |  English |World cross center|
	#|BBhouse | Spanish  |Sea cross center  |
	@updateplace
Scenario Outline: Verify if place is being sucessfully updated using update API
		
		Given Add updateplace payload "<updateaddress>"
	 	When  user calls "updatePlaceAPI" with "POST" http request
	 	Then the API call got success with status code 200
	 	And "msg" in response body is "Address successfully updated"
	 Examples:
	 |updateaddress		|
	 |YSR District,AP	|
	 
	 