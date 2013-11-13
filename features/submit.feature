Feature: Submitting a Spoonerism
  In order to get a spoonerism
  As a user with a sense of humor 
  I need a spoonerism generator

  Background: Filling in Generator
    Given I am on the homepage
    When I fill in "spoonerism" with "spoon fork"

  Scenario: Submitting a string
    And I press "Submit"
    Then I should see "Fpoon sork" 

  Scenario: Specifiying how many letters to spoonerise
    And I select "2" from "number"
    And I press "Submit"
    Then I should see "Fooon sprk"