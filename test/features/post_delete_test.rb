require "test_helper"

feature "Deleting a post" do

  scenario "post is deleted with a click" do

    # Given an existing post
    posts(:cf)

    visit posts_path
    save_and_open_page


    # When the delete link is clicked
    click_on 'Destroy'

    # Then the post is deleted
    page.wont_have_content "Becoming a Code Fellow"
    page.wont_have_content "Means striving for excellence"

  end
end
