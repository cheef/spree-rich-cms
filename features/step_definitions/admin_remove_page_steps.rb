When(/^I click to remove #{capture_model}$/) do |page|
  within '.page', text: model!(page).title do
    page.should have_css '.remove-page-link'

    find('.l-page-title').hover
    handle_js_confirm { find('.remove-page-link', visible: false).click }
  end
end

Then(/^I see that page deleted successfully$/) do
  page.should have_css '.flash.success'
end

def handle_js_confirm accept = true
  page.evaluate_script "window.original_confirm_function = window.confirm"
  page.evaluate_script "window.confirm = function(msg) { return #{!!accept}; }"
  yield
ensure
  page.evaluate_script "window.confirm = window.original_confirm_function"
end