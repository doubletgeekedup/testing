
def page_name(args)
  args.map {|a| a.downcase.gsub(/[^a-z]/, '')}.join('-')
end

Then(/^I should be on the (.*) page$/) do |path|
  expect(page).to have_text("inov-8")
end

Then(/^the (.*) window should open$/) do |text|
  expect(page.driver.browser.window_handles.count).to eq(2)
  within_window(windows.last) do
    expect(page).to have_content(text)
  end
end

Then(/^I should see helpful messages reminding me to select a size$/) do
  expect(page).to have_text("Please select a size")
  expect(page).to have_link("Don't see your size?")
end

Then(/^I should only see inov\-(\d+) brand items/) do |brand|
  all('a.product').each {|tag| expect(tag.text).to have_content("inov-#{brand}")}
end

Then(/^there is (\d+) item(s?) in my cart$/) do |count, s|
  expect(page).to have_content("You have #{count} item#{s} in your shopping cart")
end
