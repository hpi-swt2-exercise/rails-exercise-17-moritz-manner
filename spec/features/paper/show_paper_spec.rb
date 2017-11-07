require 'rails_helper'

describe "Show author page", type: :feature do
  it "should display a paper's title, venue and year" do
    paper = FactoryGirl.create :paper

    visit paper_path(paper)
    expect(page).to have_content('COMPUTING MACHINERY AND INTELLIGENCE')
    expect(page).to have_content('Mind 49: 433-460')
        expect(page).to have_content(1950)
  end
end
