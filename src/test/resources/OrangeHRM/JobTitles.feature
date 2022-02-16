Feature: Job Titles Page

  @US333 @smoke @regression
  Scenario Outline: Verify Job Titles Page Header
    Given User is logged into NTK application <region>
    When User navigates to Job Titles Page | click "menu.jobTitles"
    Then System displays page header | verify "jobTitles.header" <header>

    @scrum
    Examples: 
      | region  | header       |
      | "scrum" | "Job Titles" |

    @sit
    Examples: 
      | region | header       |
      | "sit"  | "Job Titles" |

  @US345 @regression
  Scenario Outline: Verify User able to add new Job Titles
    Given User is logged into NTK application <region>
    When User navigates to Job Titles Page | click "menu.jobTitles"
    And User clicks Add icon | click "common.addIcon"
    And User enters Job Title | enterValue "jobTitles.title" <title>
    And User enters Job Description | enterValue "jobTitles.description" <description>
    And User enters Note | enterValue "jobTitles.note" <note>
    And User clicks save button | click "common.saveButton"
    Then System displays message "Successfully Saved"

    @scrum
    Examples: 
      | region  | title  | description            | note        |
      | "scrum" | "SDET" | "test job description" | "test note" |

    @sit
    Examples: 
      | region | title | description            | note        |
      | "sit"  | "BA"  | "test job description" | "test note" |

  @US544  @regression
  Scenario Outline: Verify User able to edit existing Job Titles
    Given User is logged into NTK application <region>
    When User navigates to Job Titles Page | click "menu.jobTitles"
    And User clicks edit icon | click "common.editIcon"
    And User enters Job Title | enterValue "jobTitles.title" <title>
    And User enters Job Description | enterValue "jobTitles.description" <description>
    And User enters Note | enterValue "jobTitles.note" <note>
    And User clicks save button | click "common.saveButton"
    Then System displays message "Successfully Updated"

    @scrum
    Examples: 
      | region  | title  | description              | note          |
      | "scrum" | "SDET" | "update job description" | "update note" |

    @sit
    Examples: 
      | region | title | description              | note          |
      | "sit"  | "BA"  | "update job description" | "update note" |
