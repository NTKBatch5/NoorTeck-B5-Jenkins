Feature: ComCost Mobile functionality
  @Scrum
  Scenario Outline: verfiy exchange functionality is working
    Given User navigates to home page
    When User enters credentials "<UserName>" "<Password>"
    And User cliks exchage button
    And User selects the item for exchage
    And User porvids new item for exchange
    And User clicks continue
    Then User verifies the exchage successfully
    Examples: 
      | UserName | Password |
      | name1    | test123  |
      | name2    | test456  |

  @Scrum
  Scenario Outline: verfiy search functionality is working
    Given User navigates to home page
    When User clicks search button
    And User selects the new item
    And User selects the item for exchage
    And User clicks continue
    Then User verifies search button successfully
  @Scrum
  Scenario Outline: verfiy type of payment
    Given User navigates to home page
    When User enter firstName <FirstName> <LastName>
    And User enters phon number <PhoneNumber>
    And User enters address <Address>
    And User enters zipcode <Zipcode>
    And User enters email <Email>
    And User enters payment
    And User clicks continue
    Then User paid successfully
      | FirstName | LastName | PhoneNumber | Address        | Zipcode | Email          |
      | atiq      | saleh    |    48469926 | Fredericksburg |   22408 | atiq@gmail.com |
