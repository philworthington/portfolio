require "test_helper"

feature "Ability for the user to sign out" do

  scenario "sign out and destroy session" do

    # Sign up
    visit projects_path
    click_on "Sign Up"

    # Sign up user form
     fill_in "Email", with: "user22@example.com"
     fill_in "Password", with: users(:editor).encrypted_password
     fill_in "Password confirmation", with: users(:editor).encrypted_password
     click_on "Sign up"

    # Sign out to destroy session
    # click_on "Sign Out"

    # # Sign out confirmation
    # page.text.must_include "Signed out successfully."

  end
end
