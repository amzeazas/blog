require "rails_helper"

describe "user registration" do
  it "allows new users to register" do
    visit "/users/sign_up"
    fill_in "Email",                 :with => "admin@example.com"
    fill_in "Username",              :with => "admin"
    fill_in "Password",              :with => "password"
    fill_in "Password confirmation", :with => "password"
    click_button "Sign up"
    expect(page).to have_content("Welcome! You have signed up successfully.")
  end
end
