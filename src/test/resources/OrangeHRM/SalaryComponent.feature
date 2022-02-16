Feature: Salary Components Pages

  @US222 @smoke
  Scenario Outline: Verify Salary Components Page Header
    Given User is logged into NTK application <region>
    When User navigates to Salary Components Page | click "menu.salaryComp"
    Then System displays page header | verify "salaryComp.header" <header>

    @scrum
    Examples: 
      | region  | header              |
      | "scrum" | "Salary Components" |

    @sit
    Examples: 
      | region | header              |
      | "sit"  | "Salary Components" |

  @US22 @smoke @regression
  Scenario Outline: Verify User able to add new Salary Component
    Given User is logged into NTK application <region>
    When User navigates to Salary Components Page | click "menu.salaryComp"
    And User clicks Add icon | click "common.addIcon"
    And User enters Component Name | enterValue "salaryComp.name" <name>
    And User selects Add to options  | selectOption
      | earning   | deduction   |
      | <earning> | <deduction> |
    And User selects Add to options  | selectOption
      | totalPayable   | CostToCompany   |
      | <totalPayable> | <costToCompany> |
    And User selects Value Type | selectOption
      | valueType | percentage   |
      | <amount>  | <percentage> |
    And User clicks save button | click "common.saveButton"
    Then System displays message "Successfully Saved"

    @scrum
    Examples: 
      | region  | name      | earning              | deduction              | totalPayable       | costToCompany     | amount              | percentage              |
      | "scrum" | "Sr.SDET" | "salaryComp.earning" |                        | "salaryComp.total" |                   | "salaryComp.amount" |                         |
      | "scrum" | "Sr.Dev"  |                      | "salaryComp.deduction" |                    | "salaryComp.cost" |                     | "salaryComp.percentage" |
      | "scrum" | "Sr.BA"   | "salaryComp.earning" | "salaryComp.deduction" | "salaryComp.total" | "salaryComp.cost" | "salaryComp.amount" | "salaryComp.percentage" |

    @sit
    Examples: 
      | region | name     | earning              | deduction              | totalPayable       | costToCompany     | amount              | percentage              |
      | "sit"  | "Sr.HR"  | "salaryComp.earning" |                        | "salaryComp.total" |                   | "salaryComp.amount" |                         |
      | "sit"  | "Sr.Sec" |                      | "salaryComp.deduction" |                    | "salaryComp.cost" |                     | "salaryComp.percentage" |
      | "sit"  | "Sr.QA"  | "salaryComp.earning" | "salaryComp.deduction" | "salaryComp.total" | "salaryComp.cost" | "salaryComp.amount" | "salaryComp.percentage" |

  @US222   @regression
  Scenario Outline: Verify User able to edit existing Salary Component
    Given User is logged into NTK application <region>
    When User navigates to Salary Components Page | click "menu.salaryComp"
    And User clicks edit icon | click "common.editIcon"
    And User enters Component Name | enterValue "salaryComp.name" <name>
    And User selects Add to options  | selectOption
      | earning   | deduction   |
      | <earning> | <deduction> |
    And User selects Add to options  | selectOption
      | totalPayable   | CostToCompany   |
      | <totalPayable> | <costToCompany> |
    And User selects Value Type | selectOption
      | valueType | percentage   |
      | <amount>  | <percentage> |
    And User clicks save button | click "common.saveButton"
    Then System displays message "Successfully Updated"

    @scrum
    Examples: 
      | region  | name       | earning | deduction              | totalPayable | costToCompany     | amount              | percentage |
      | "scrum" | "Sr. SDET" |         | "salaryComp.deduction" |              | "salaryComp.cost" | "salaryComp.amount" |            |

    @sit
    Examples: 
      | region | name     | earning | deduction              | totalPayable | costToCompany     | amount              | percentage |
      | "sit"  | "Sr. BA" |         | "salaryComp.deduction" |              | "salaryComp.cost" | "salaryComp.amount" |            |
