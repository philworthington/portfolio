require "test_helper"

feature "creating a post" do

  scenario "submitting form data to submit a new post" do
    # Given a completed post form
    visit posts_path
    click_on "New Post"
    fill_in 'Title', with: 'an arbitrary string'
    fill_in 'Content', with: 'a long time ago in a galaxy far far away'

     # When I submit the form
     click_on 'Create Post'

     # Then I should see the new post
     page.text.must_include 'an arbitrary string'
     page.text.must_include 'a long time ago'

     # And a success message
     page.text.must_include 'Post was successfully created'

  end
end
