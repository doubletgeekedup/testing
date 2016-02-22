
#When(/^I (?:select|have selected) the (w*) from the search results$/) do |path|
    #find(:xpath, "//div[@id=\"searchResults\"]/a[contains(@href, '#{page_name(path.split(' '))}')]").click
  #end

def click_button_with_text(button_text)
  find("button", text: button_text).click
end

When(/^add the item to my cart$/) do
  click_button_with_text("Add to Cart")
end

When(/^I click the "(.*?)" link$/) do |link_text|
  click_link link_text
end

When(/^I don't see my size$/) do
  click_link "Don't see your size?"
end

When(/^I select size (\d+)$/) do |size|
     expect(page).to have_content("Width: W")
     find(:select, "d3").first(:option, "#{size}").select_option
end

     #When(/^I (?:select|have selected) the Inov 8 F Lite 240 Thyme Black Orange from the search results$/) do
     #find(:xpath, "//div[@id=\"searchResults\"]/a[contains(@href, '/inov-8-f-lite-240-thyme-black-orange')]").click
     #end

When(/^I have selected the Inov 8 F Lite 240 Thyme Black Orange from the search results$/) do
  find(:xpath, "//div[@id=\"searchResults\"]/a[contains(@href, \"/inov-8-f-lite-240-thyme-black-orange\")]").click
end
When(/^I select the Inov 8 F Lite 240 Thyme Black Orange from the search results$/) do
     #find(:xpath, "//div[@id=\"searchResults\"]/a[contains(@href, \"/inov-8-f-lite-240-thyme-black-orange\")]").click
  visit "/inov-8-f-lite-240-thyme-black-orange"
end