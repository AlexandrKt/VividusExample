
Scenario: Verify policies list at the bottom of EPAM.com
Given I am on main application page
When I scroll context to BOTTOM edge
Then text `<text>` exists
Examples:
| text                     |
| INVESTORS                |
| COOKIE POLICY            |
| OPEN SOURCE              |
| APPLICANT PRIVACY NOTICE |
| PRIVACY POLICY           |
| WEB ACCESSIBILITY        |