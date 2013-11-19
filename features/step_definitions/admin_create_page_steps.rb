Then(/^I should see page form$/) do
  page.should have_css '.page-form'
end

When(/^I fill page title with "(.*?)"$/) do |text|
  find('.page-title-input').set text
end

When(/^I click button to save page$/) do
  find('.form-buttons button.icon-ok').click
end

Then(/^I should see that page successfully saved$/) do
  page.should have_css '.flash.success'
end