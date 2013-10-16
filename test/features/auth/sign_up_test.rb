require "test_helper"

feature ("Ability to sign up for an account") do

  scenario "sign up" do

    # Given a registration form
    visit projects_path
    click_on "Sign Up"

    # When I register with valid info
    fill_in "Email", with: users(:one).email
    fill_in "Password", with: users(:one).encrypted_password
    fill_in "Password confirmation", with: users(:one).encrypted_password
    click_on "Sign up"

    # Then I should be signed up
    page.must_have_content "Welcome! You have signed up successfully"
    page.wont_have_content "There was a problem with your sign up"
  end
end
