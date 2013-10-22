require "test_helper"

feature "Signing in" do

  scenario "Allowing an existing user to sign in" do

    visit projects_path
    click_on "Sign In"

    # Fill in sign in form
    fill_in "Email", with: users(:editor).email
    fill_in "Password", with: "password"
    click_on "Sign in"


    # Sign in confirmation
    page.text.must_include "Signed in successfully."

  end
end
