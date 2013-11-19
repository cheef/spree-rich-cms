require 'uri'
require 'cgi'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

When /^(?:|I )go to (.+)$/ do |page_name|
  visit path_to(page_name)
end

Then /^show me the page$/ do
  save_and_open_page
end

When /^(?:|I )wait until all Ajax requests are completed$/ do
  wait_until do
    page.evaluate_script('$.active') == 0
  end
end
