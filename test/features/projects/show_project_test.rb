require "test_helper"

feature "Projects::ShowProject" do

  scenario "the test is sound" do


    visit project_path(projects(:cf))


    page.must_have_content "Becoming a Code Fellow"
    page.must_have_content "Means striving for excellence."
  end
end
