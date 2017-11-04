require 'rails_helper'

describe 'New Paper page', type: :feature  do

  it "should render without error" do
    visit new_paper_path
  end

  it "should have a title field" do
    visit new_paper_path
    expect(page).to have_field('Title')
  end
end
