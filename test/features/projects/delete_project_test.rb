require "test_helper"

feature "Deleting a project" do

  scenario "project is deleted with a click" do

    # Given an existing project
    projects(:cf)

    visit projects_path

    # When the delete link is clicked
    # click_on 'Destroy'

    # Then the project is deleted
    # page.wont_have_content "Becoming a Code Fellow"
    # page.wont_have_content "Means striving for excellence"

  end
end
