Feature: Ask for notifications
  As a shopper
  So that I can buy my new shoes as soon as they are available
  I want to be able to ask for notifications

  Background:
    Given I am on the Inov-8 Men's Shoes page
    And I have selected the Inov 8 F Lite 240 Thyme Black Orange from the search results

  Scenario: Customer is given opportunity to request notification when size is in stock
    When I don't see my size
    Then the NOTIFY ME window should open
    
#There's no place to select width. It is a constant
  Scenario: Customer requests notification when size is available
    When I don't see my size
    And I ask to be notified when size 12  is in stock
    Then I should see a notification message with size 12
