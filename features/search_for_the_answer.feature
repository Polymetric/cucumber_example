Feature: Search for the Answer to the Ultimate Question

Scenario: Search for the Answer
  Given I am on the Google homepage
  Then I will search for "the answer to the ultimate question of life the universe and everything"
  And I should see "42"
  Then I will click the Wikipedia link
