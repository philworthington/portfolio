require "test_helper"

feature "Visiting the posts" do

  scenario "Show existing posts" do

    # Visit posts
    visit posts_path

    # Create post
    click_on 'New Post'
    save_and_open_page
    fill_in "Title", with: posts(:cf).title
    fill_in "Content", with: posts(:cf).content
    click_on 'Create Post'


    # View completed
    page.text.must_include posts(:cf).title
    page.text.must_include posts(:cf).content

  end
end
