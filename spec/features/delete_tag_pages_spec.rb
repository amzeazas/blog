require 'rails_helper'

describe "the delete a tag process" do
  it "deletes a tag" do
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
    click_on 'Harley Quinn'
    click_on 'Delete Tag'
    expect(page).to_not have_content "Harley Quinn"
    expect(page).to have_content "Tags"
  end
end
