require "test_helper"

feature "Visiting the posts" do
  focus
  scenario "Show existing posts" do

    # Create post
    Post.create(title: "Becoming a Code Fellow", content: "Means striving for excellence.")

    # Visit posts
    visit posts_path

    # View completed
    page.text.must_include 'Becoming a Code Fellow'
    page.text.must_include 'Means striving for excellence'

  end
end
