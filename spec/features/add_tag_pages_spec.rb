require 'rails_helper'

describe "the add a tag process" do
  it "adds a new tag" do
    user = User.create(:email => "admin@example.com",
                        :username => "admin",
                        :password => "password",
                        :admin? => true)
    visit "/users/sign_in"
    fill_in "Email",                 :with => "admin@example.com"
    fill_in "Password",              :with => "password"
    click_button "Sign in"
    click_on "Add a New Tag"
    fill_in 'Name', :with => "Harley Quinn"
    click_on 'Save'
    expect(page).to have_content "Harley Quinn"
  end

  it "gives error when no name is entered" do
    user = User.create(:email => "admin@example.com",
                        :username => "admin",
                        :password => "password",
                        :admin? => true)
    visit "/users/sign_in"
    fill_in "Email",                 :with => "admin@example.com"
    fill_in "Password",              :with => "password"
    click_button "Sign in"
    visit new_tag_path
    click_on "Save"
    expect(page).to have_content 'errors'
  end
end
