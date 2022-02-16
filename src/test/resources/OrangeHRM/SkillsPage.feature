Feature: Skills Page

  @US123 @smoke @regression
  Scenario Outline: Verify User able to add new Skills
    Given User is logged into NTK application <region>
    When User navigates to Skills Page | click "menu.skills"
    And User clicks Add icon | click "common.addIcon"
    And User enters Name | enterValue "skills.name" <name>
    And User enters Description | enterValue "skills.description" <description>
    And User clicks save button | click "common.saveButton"
    Then System displays message "Successfully Saved"

    @scrum
    Examples: 
      | region  | name       | description            |
      | "scrum" | "selenium" | "test  description123" |

    @sit
    Examples: 
      | region | name       | description            |
      | "sit"  | "selenium" | "test  description123" |
