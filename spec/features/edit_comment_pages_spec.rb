require 'rails_helper'

describe "the edit a comment process" do
  it "edits a comment" do
    user = User.create(:email => "admin@example.com",
                        :username => "admin",
                        :password => "password",
                        :admin? => true)
    post = Post.create(:title => "Harley Quinn is the BEST!",
                        :body => "I absolutely love Harley Quinn.")
    visit "/users/sign_in"
    fill_in "Email",                 :with => "admin@example.com"
    fill_in "Password",              :with => "password"
    click_button "Sign in"
    click_link "Harley Quinn is the BEST!"
    click_link "Add New Comment"
    fill_in "Your Comment", :with => "Yass!"
    click_button "Save"
    click_on 'Edit Comment'
    fill_in 'Your Comment', :with => "Yass!!!"
    click_on 'Save'
    expect(page).to have_content "Yass!!!"
  end
end
