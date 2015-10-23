require 'rails_helper'

describe "the add a comment process" do
  it "adds a new comment" do
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
    expect(page).to have_content "Yass!"
  end

  it "gives error when no comment is entered" do
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
    click_button "Save"
    expect(page).to have_content 'errors'
  end
end
