require 'rails_helper'

describe "the edit a post process" do
  it "edits a post" do
    user = User.create(:email => "admin@example.com",
                        :username => "admin",
                        :password => "password",
                        :admin? => true)
    visit "/users/sign_in"
    fill_in "Email",                 :with => "admin@example.com"
    fill_in "Password",              :with => "password"
    click_button "Sign in"
    click_on "Add a New Post"
    fill_in 'Title', :with => "Harley Quinn is the BEST!"
    fill_in 'Post', :with => "I absolutely love Harley Quinn."
    click_on 'Save'
    click_on 'Harley Quinn is the BEST!'
    click_on 'Edit Post'
    fill_in 'Title', :with => "Harley Quinn is the BESTEST!"
    click_on 'Save'
    expect(page).to have_content "Harley Quinn is the BESTEST!"
  end
end
