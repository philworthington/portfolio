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
end
