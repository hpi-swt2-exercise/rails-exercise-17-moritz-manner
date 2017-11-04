require 'rails_helper'

describe 'New Paper page', type: :feature  do

  it "should render without error" do
    visit new_paper_path
  end

  it "should have a title, venue and year field" do
    visit new_paper_path
    expect(page).to have_field('Title')
    expect(page).to have_field('Venue')
    expect(page).to have_field('Year')
  end

  it "should have submit button" do
    visit new_paper_path
    expect(page).to have_css('input[type="submit"]')
  end
end
