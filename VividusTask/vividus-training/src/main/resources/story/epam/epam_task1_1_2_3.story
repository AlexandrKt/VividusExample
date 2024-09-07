
Scenario: Check the title is correct
Given I am on main application page
Then page title IS_EQUAL_TO `EPAM | Software Engineering & Product Development Services`
Then `${current-page-url}` is equal to `https://www.epam.com/`

Scenario: Verify ability to switch from Light mode to Light mode on EPAM.com
When I execute sequence of actions:
  |type          |argument                        |
  |CLICK         |By.xpath(//*[@class = 'switch'])|
Then number of elements found by `By.xpath(//body[contains(@class, 'light-mode')])` is equal to `1`

Scenario: Verify ability to switch from Dark mode to Dark mode on EPAM.com
When I execute sequence of actions:
  |type          |argument                        |
  |CLICK         |By.xpath(//*[@class = 'switch'])|
Then number of elements found by `By.xpath(//body[contains(@class, 'dark-mode')])` is equal to `1`

Scenario: Verify ability to change site language to Ukrainian on EPAM.com
When I execute sequence of actions:
  |type          |argument                        |
  |CLICK         |By.xpath(//button[@class ="location-selector__button"])|
When I execute sequence of actions:
  |type          |argument                        |
  |CLICK         |By.xpath(//a[@lang="uk"])       |
Then text `<text>` exists
Examples:
| text       |
| Вакансії   |

