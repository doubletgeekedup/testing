Given(/^I am at Zappos\.com$/) do
  visit "http://www.zappos.com" 
end

When(/^I am on the (.*) page$/) do |path|
  case path
  when "Men's Shoes"
    visit "/mens"
  when "Athletic Men's Shoes"
    visit "/mens-sneakers-athletic-shoes~dA"
  when "Inov-8 Men's Shoes"
    visit "mens-sneakers-athletic-shoes~dA#!/inov-8-men-sneakers-athletic-shoes/CK_XARC81wFaArsMwAEC4gIEARgCCw.zso?s=goliveRecentSalesStyle/desc/"
  else
    visit "/"
  end
end
