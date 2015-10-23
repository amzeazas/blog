require "rails_helper"

describe "user sign-in" do
  it "allows new users to sign-in" do
    user = User.create(:email => "admin@example.com",
                        :username => "admin",
                        :password => "password",
                        :admin? => true)
    visit "/users/sign_in"
    fill_in "Email",                 :with => "admin@example.com"
    fill_in "Password",              :with => "password"
    click_button "Sign in"
    expect(page).to have_content("Signed in successfully.")
  end
end
