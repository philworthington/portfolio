require "test_helper"

feature "Editing a post" do

  scenario "submit updates for an existing post" do

    sign_in_user

    # Create a post
    @post = posts(:cf)

    # When I click edit and submit changed data
    visit post_path(@post)
    click_on 'Edit'
    fill_in 'Content', with: "this is the content."

    # Then the post is updated

    click_on "Update Post"


    # View completed
    page.must_have_content "this is the content."
    page.wont_have_content posts(:cf).content
  end
end
