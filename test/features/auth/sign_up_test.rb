require "test_helper"

feature "Sign up" do

  scenario "Sign up for an account using sign up button" do

    # Given a registration form
    visit projects_path
    click_on "Sign Up"

    # When I register with valid info
    fill_in "Email", with: "usertest@example.com"
    fill_in "Password", with: users(:editor).encrypted_password
    fill_in "Password confirmation", with: users(:editor).encrypted_password
    click_on "Sign up"

    # Then I should be signed up
    page.must_have_content "Welcome! You have signed up successfully"
    page.wont_have_content "There was a problem with your sign up"
  end
end
