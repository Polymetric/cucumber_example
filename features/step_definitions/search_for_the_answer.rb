Given(/^I am on the Google homepage$/) do
  visit "https://google.com"
end

Then(/^I will search for "([^"]*)"$/) do |search_term|
  fill_in 'lst-ib', with: search_term
end

Then(/^I should see "([^"]*)"$/) do |expected_term|
  page.has_content?(expected_term)
end

Then(/^I will click the Wikipedia link$/) do
  click_link("42 (number) - Wikipedia, the free encyclopedia")
end
