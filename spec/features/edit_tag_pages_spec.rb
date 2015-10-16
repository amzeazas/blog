require 'rails_helper'

describe "the edit a tag process" do
  it "edits a tag" do
    visit posts_path
    click_on "Add a New Tag"
    fill_in 'Name', :with => "Harley quinn"
    click_on 'Save'
    click_on 'Harley quinn'
    click_on 'Edit Tag'
    fill_in 'Name', :with => "Harley Quinn"
    click_on 'Save'
    expect(page).to have_content "Harley Quinn"
  end
end
