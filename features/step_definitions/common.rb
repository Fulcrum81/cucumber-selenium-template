Given(/^I am on the home page$/) do
  visit '/'
end

When(/^I choose english language$/) do
  click_link('English')
end

When(/^I fill in "([^"]*)" to the search field$/) do |query|
  find('input[aria-label=Search]').set(query)
end

When(/^I start search$/) do
  find('input[aria-label=Search]').send_keys(:enter)
end

Then(/^I should see "([^"]*)"$/) do |text|
  expect(page).to have_content(text)
end
