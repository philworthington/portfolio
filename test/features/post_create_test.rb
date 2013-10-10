require "test_helper"

feature "creating a post" do

  scenario "submitting form data to submit a new post" do

    # Given a completed post form
    visit posts_path
    click_on "New Post"
    fill_in "Title", with: posts(:cf).title
    fill_in "Content", with: posts(:cf).content

     # When I submit the form
     click_on 'Create Post'

     # Then a new post should be created and displayed
    page.text.must_include "Post was successfully created"
    page.text.must_include posts(:cf).title

  end
end
