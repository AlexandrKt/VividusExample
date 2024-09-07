Scenario: Verify clicking the company logo navigates to the main page
Given I am on page with URL `https://www.epam.com/about`
When I click on element located by `xpath(.//a[@class = 'header__logo-link'])`
Then `${current-page-url}` is equal to `https://www.epam.com/`
