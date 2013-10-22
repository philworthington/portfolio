require "test_helper"

feature "Visiting the posts" do

  scenario "Show existing posts" do

    sign_in

    # Visit posts
    visit posts_path

    # Create post
    click_on 'New Post'

    fill_in "Title", with: posts(:cf).title
    fill_in "Content", with: posts(:cf).content
    click_on 'Create Post'


    # View completed
    page.text.must_include posts(:cf).title
    page.text.must_include posts(:cf).content

  end

  scenario "View all posts regardless of published as editor" do

    sign_in(:editor)

    visit posts_path

    page.text.must_include posts(:cf).title
  end





end
