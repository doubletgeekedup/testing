Feature: Add to cart
  As a customer
  I can fill my shopping cart with all the things I would like to to buy
  I want to be able to add items to my cart

  Scenario: Shopper successfully adds one item to cart
   Given I am on the Inov-8 Men's Shoe page
   When I select the Inov 8 F Lite 240 Thyme Black Orange from the search results
   And I select size 10
   And add the item to my cart
   Then there is 1 item in my cart


  Scenario: Shopper is reminded to specify size when adding items to cart
    Given I am on the Inov-8 Men's Shoe page
    When I select the Inov 8 F Lite 240 Thyme Black Orange from the search results
    And add the item to my cart
    Then I should see helpful messages reminding me to select a size

