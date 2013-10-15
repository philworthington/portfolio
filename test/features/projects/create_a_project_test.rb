require "test_helper"

feature "Create a project" do

  scenario "submitting form data to create a new project" do

    # Go to root path
    visit projects_path


    # Create new project
    click_on "New project"

    fill_in "Name", with: projects(:cf).name
    fill_in "Technologies used", with: projects(:cf).technologies_used
    click_on "Create Project"

    page.must_have_content "Becoming a Code Fellow"
    page.must_have_content "Means striving for excellence."

  end

  scenario "new project has invalid data" do
    # Given invalid project data is entered in a form
    visit new_project_path
    fill_in "Name", with: "Q"

    # When the form is submitted with a short name and missing technologies_used field
    click_on "Create Project"

    save_and_open_page
    # Then the form should be displayed again, with an error message
    current_path.must_match /projects$/
    page.text.must_include "Project could not be saved"
    page.text.must_include "Name is too short"
    page.text.must_include "Technologies used can't be blank"
  end
end
