Feature: Validating place API's

Scenario: verify if place is being sucessfully added using Add place API
Given Add place payload
When user calls "AddPlaceAPI" with POST http request
Then the API call got scucess with status code  200
And "status" in response body is "ok"

