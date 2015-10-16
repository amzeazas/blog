require 'rails_helper'

describe "the add a post process" do
  it "adds a new post" do
    visit posts_path
    click_on "Add a New Post"
    fill_in 'Title', :with => "Harley Quinn is the BEST!"
    fill_in 'Post', :with => "I absolutely love Harley Quinn."
    click_on 'Save'
    expect(page).to have_content "Harley Quinn is the BEST!"
  end

  it "gives error when no title is entered" do
    visit new_post_path
    click_on "Save"
    expect(page).to have_content 'errors'
  end
end
