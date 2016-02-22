def sidebar_class(subcat, cat)
  "gae-click\*Homepage*Category-Navigation\*Shop-#{cat.gsub(/[^A-Za-z]/, '')}--Sneakers--#{subcat.gsub(/[^A-Za-z]/, '')}-Shoes"
end

Given(/^I select (.*) from the (.*) heading on the sidebar$/) do |subcategory, category|
  page.find(:xpath,"//a[@class=\"#{sidebar_class(subcategory, category)}\"]").click
end

When(/^I select the (w*) brand from the sidebar$/) do |name|
    find(:xpath, "//div[@id=\"FCTbrandnamefacetSelect\"]/a[contains(@href, '#{page_name(name.split(' '))}')]").click
end

#Given(/^I select the Inov (\d+) brand from the sidebar$/) do |name|
    #    find(:xpath, "//div[@id=\"FCTbrandnamefacetSelect\"]/a[contains(@title, 'inov-8')]").click
#end

Given(/^I select the Inov (\d+) brand from the sidebar$/) do |name|
    find(:xpath, "//div[@id=\"FCTbrandnamefacetSelect\"]/a[@title=\"Inov-8 - (32 Items)\"]").click
end

#When(/^I select the (.*) (w*) brand from the sidebar$/) do |name, facet|
#find(:xpath, "//div[@id=\"searchResults\"]/a[contains(@href, '#{page_name(name.split(' '))}')]").click
#end