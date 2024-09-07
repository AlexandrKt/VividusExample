Scenario: Verify region switch functionality in Our Locations on EPAM.com
Given I am on main application page
When I scroll element located by `xpath(//a[text()='EMEA'])` into view
When I click on element located by `xpath(.//a[text() = 'EMEA'])`
Then number of elements found by `By.xpath(.//div[text()='Austria'])` is equal to `2`
