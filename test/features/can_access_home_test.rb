require "test_helper"

feature "CanAccessHome" do
  scenario "the test is sound" do
    visit root_path
    page.must_have_content "Phil Worthington"

  end
end
