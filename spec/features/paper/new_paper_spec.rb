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

  # it "should create an instance of paper" do
  #   visit new_paper_path
  #   fill_in "paper_title", :with => 'COMPUTING MACHINERY AND INTELLIGENCE'
  #   fill_in "paper_venue", :with => 'Mind 49: 433-460'
  #   fill_in "paper_year", :with => '1950'
  #   find('input[type="submit"]').click
  # end
end
