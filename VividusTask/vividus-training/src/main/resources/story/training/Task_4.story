Scenario: Navigate to the website login page
Given I am on main application page
When I wait until element located by `caseSensitiveText(Swag Labs)` appears
Then `${current-page-url}` is equal to `https://www.saucedemo.com/`
When Open site Login Page
When I COMPARE_AGAINST baseline with name `loginPage` ignoring:
     |ACCEPTABLE_DIFF_PERCENTAGE	|
     |5		            	    	|
Scenario: Log in as a User
When I fill `${swagGoodUserName}`, `${swagPassword}` in registration form and submit
When I COMPARE_AGAINST baseline with name `homepage` ignoring:
     |ELEMENT		                                    |ACCEPTABLE_DIFF_PERCENTAGE	|
     |By.XPath(//*[@class='inventory_item_img']//)  	|5		            		|