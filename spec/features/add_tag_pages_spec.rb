require 'rails_helper'

describe "the add a tag process" do
  it "adds a new tag" do
    visit posts_path
    click_on "Add a New Tag"
    fill_in 'Name', :with => "Harley Quinn"
    click_on 'Save'
    expect(page).to have_content "Harley Quinn"
  end

  it "gives error when no name is entered" do
    visit new_tag_path
    click_on "Save"
    expect(page).to have_content 'errors'
  end
end
