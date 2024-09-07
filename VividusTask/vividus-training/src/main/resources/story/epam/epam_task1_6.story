Scenario: Verify search functionality on EPAM.com for the term "AI"
Given I am on main application page
When I execute sequence of actions:
|type      |argument                                                          |
|CLICK     |By.xpath(.//button[@class = 'header-search__button header__icon'])|
When I enter `AI` in field located by `xpath(.//input[@id='new_form_search'])`
When I click on element located by `xpath(.//*[text()='Find'])`
Then text `<text>` exists
Examples:
| text                     |
| 693 results for "AI"     |
