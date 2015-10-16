require 'rails_helper'

describe "the delete a tag process" do
  it "deletes a tag" do
    visit posts_path
    click_on "Add a New Tag"
    fill_in 'Name', :with => "Harley Quinn"
    click_on 'Save'
    click_on 'Harley Quinn'
    click_on 'Delete Tag'
    expect(page).to_not have_content "Harley Quinn"
    expect(page).to have_content "Tags"
  end
end
