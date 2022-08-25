Feature: Verify google homepage

  @kaushal
  Scenario: Verify user is able to launch google home page successfully

    Given I am on google home page
    When I click on reject terms
    Then I verify gmail link is available on the home page
