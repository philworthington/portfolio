require "test_helper"

feature "Editting a post" do
  focus
  scenario "submit updates for an existing post" do

    # Given an existing post
    @post = Post.create(title: "Becoming a Code Fellow", content: "Means striving for excellince.")

    # When I click edit and submit changed data
    visit post_path(@post)
    click_on 'Edit'
    fill_in 'Content', with: 'Means striving for excellence.'

    # Then the post is updated
    click_on "Update Post"

    # View completed
    page.must_have_content "Means striving for excellence"
    page.wont_have_content "Means striving for excellince"

  end
end
