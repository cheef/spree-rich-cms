When(/^I log in as #{capture_model}$/) do |user|
  user = model!(user)

  Spree::Admin::BaseController.any_instance.stub spree_current_user: user
  user.stub :has_spree_role? => true
end

Then(/^I should see empty pages list$/) do
  page.should have_css '.index.pages .no-objects-found'
end

Then(/^I see button to add a new page$/) do
  page.should have_css '.page-actions .button', count: 1
end