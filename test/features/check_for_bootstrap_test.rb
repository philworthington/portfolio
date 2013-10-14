require "test_helper"

feature "Checking for bootstrap" do
  focus
  scenario "bootstrap loading on root_path" do

    # Go to root path
    visit root_path


    # Search for bootstrap class property
    # page.has_css?("page-header")
    page.has_css? 'page-header'

  end
end
