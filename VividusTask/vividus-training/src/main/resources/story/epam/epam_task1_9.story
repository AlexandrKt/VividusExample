Scenario: Verify downloading the EPAM Corporate Overview 2023 report
Given I am on page with URL `https://www.epam.com/about`
Then an element with the tag './/a[contains(@href, "EPAM_Corporate_Overview_Q4_EOY.pdf")]' and attribute 'href'='https://www.epam.com/content/dam/epam/free_library/EPAM_Corporate_Overview_Q4_EOY.pdf' exists
