When(/^I click to remove #{capture_model}$/) do |page_model|
  within '.page', text: model!(page_model).title do
    find('.remove-page-link').trigger('click')
  end
end

Then(/^I see that page deleted successfully$/) do
  should have_css '.flash.success'
end