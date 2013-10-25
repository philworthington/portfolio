require "test_helper"

feature "I want to comment on projects" do
  scenario "Add comments to projects" do

    # Visit project
    visit project_path(projects(:one))

    # Comment form
    fill_in :comment_author,        with: "one"
    fill_in :comment_author_url,    with: "http://one.example.com"
    fill_in :comment_author_email,  with: "user_one@example.com"
    fill_in :comment_content,       with: "This is the content"
    click_on "Submit comment for approval"

    # Message for awaiting moderation
    page.must_have_content "awaiting moderation"
  end
end
