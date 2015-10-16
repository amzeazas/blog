require 'rails_helper'

describe "the delete a post process" do
  it "deletes a post" do
    visit posts_path
    click_on "Add a New Post"
    fill_in 'Title', :with => "Harley Quinn is the BEST!"
    fill_in 'Post', :with => "I absolutely love Harley Quinn."
    click_on 'Save'
    click_on 'Harley Quinn is the BEST!'
    click_on 'Delete Post'
    expect(page).to_not have_content "Harley Quinn is the BEST!"
    expect(page).to have_content "Posts"
  end
end
