require "test_helper"

feature "As the site visitor, I want to see a developer's portfolio" do
  scenario "viewing all projects" do

    # Create new project
    projects(:cf)

    # Given a a couple of projects (loaded from fixtures)
    visit projects_path


    # Then I should see a list of projects
    page.text.must_include "Becoming a Code Fellow"
    page.text.must_include "Means striving for excellence."
  end
end
