Feature: Onliner search for camera
  The Onliner homepage allows user to perform a search.

  Scenario Outline: Users can perform a search on Onliner
    Given I open the Onliner search page
    When I search for "<search_term>"
    Then I should see the search dialog
    When I click on the first search result
    Then item page should be opened
    And screen size should be "<screen_size>"
    And quantity based matrix size should be "<quantity_based_matrix_size>"
    And physical based matrix size should be "<physical_based_matrix_size>"
    When I add item to the cart
    And open my cart page
    Then I should be able to see "<item>" in my cart

  Examples:
  | search_term     | item                 | screen_size | quantity_based_matrix_size | physical_based_matrix_size |
  | Canon EOS 1300D | Canon EOS 1300D Body | 3 ''        | 18 Мп                      | APS-C (1.6 crop)           |
