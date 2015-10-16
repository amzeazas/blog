require 'rails_helper'

describe "the edit a post process" do
  it "edits a post" do
    visit posts_path
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
