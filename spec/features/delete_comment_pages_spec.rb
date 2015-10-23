require 'rails_helper'

describe "the delete a comment process" do
  it "deletes a comment" do
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
    click_on 'Delete Comment'
    expect(page).to_not have_content "Yass!"
    expect(page).to have_content "Harley Quinn is the BEST!"
  end
end
