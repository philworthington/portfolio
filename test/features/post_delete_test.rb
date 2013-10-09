require "test_helper"

feature "Deleting a post" do
  focus
  scenario "post is deleted with a click" do
    # Given an existing post
    @post = Post.create(title: "Becoming a Code Fellow", content: "Means striving for excellince.")

    # When the delete link is clicked
    visit posts_path
    save_and_open_page
    click_on 'Destroy'

    # Then the post is deleted
    page.wont_have_content "Means striving for excellince"

  end
end
