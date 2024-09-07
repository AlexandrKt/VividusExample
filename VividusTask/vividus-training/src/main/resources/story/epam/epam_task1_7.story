Scenario: Verify required fields validation on contact form
Given I am on page with URL `https://www.epam.com/about/who-we-are/contact`
Then an element with the tag './/input[@name="user_first_name"]' and attribute 'aria-required'='true' exists
Then an element with the tag './/input[@name="user_last_name"]' and attribute 'aria-required'='true' exists
Then an element with the tag './/input[@name="user_email"]' and attribute 'aria-required'='true' exists
Then an element with the tag './/input[@name="user_phone"]' and attribute 'aria-required'='true' exists
Then an element with the tag './/input[@name="gdprConsent"]' and attribute 'aria-required'='true' exists
When I scroll element located by `xpath(.//button[@type='submit'])` into view
When I click on element located by `xpath(.//button[@type='submit'])`
