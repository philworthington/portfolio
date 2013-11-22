require "test_helper"

feature "creating a post" do

  scenario "submitting form data to submit a new post" do

    # Sign in
    sign_in

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
    page.has_css? "#author"
    # page.text.must_include posts(:cf).author.email

  end

  scenario "authors can create posts" do

    sign_in(:author)

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

  scenario "authors cannot publish posts" do

    sign_in(:author)

    visit posts_path

    page.wont_have_field('Publish')

  end

  scenario "editors can create posts" do

    sign_in(:editor)

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

  scenario "Editors can publish posts" do
    # sign_in(:editor)

    # visit posts_path

    # click_on "Publish"
    # page.text.must_include 'Post was successfully updated.'

  end

  scenario "Users have to log in to create a post" do

    visit posts_path

    click_on "New Post"

    page.text.must_include "You need to sign in or sign up before continuing."

  end

  scenario "Create a post on the index using ajax", js: true

    visit posts_path

    click_on "New Post"

    fill_in "Title", with: posts(:cf).title
    fill_in "Content", with: posts(:cf).content

    click_on "Create Post"

    page.text.must_include "Post was successfully created"


end
