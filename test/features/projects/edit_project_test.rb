require "test_helper"

feature "As the site owner, I want to edit a project so that I can correct typos" do
  scenario "editing an existing project" do
    # Given an existing project
    visit edit_project_path(projects(:cf))

    # When I make changes
    fill_in "Name", with: "My Rad Portfolio"
    click_on "Update Project"

    # Then the changes should be saved and shown
    page.text.must_include "successful"
    page.text.must_include "Rad Portfolio"
    page.text.wont_include "Becoming a Code Fellow"
  end
end
