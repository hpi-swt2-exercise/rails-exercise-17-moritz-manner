require 'rails_helper'

describe 'Paper index page', type: :feature do
  it "should render without error" do
    author = FactoryGirl.create :paper
    visit papers_path
  end

  it "should display title, venue and year of all papers" do
    paper = FactoryGirl.create :paper
    paper.save
    visit papers_path
    expect(page).to have_css('td', :text => 'COMPUTING MACHINERY AND INTELLIGENCE')
    expect(page).to have_css('td', :text => 'Mind 49: 433-460')
    expect(page).to have_css('td', :text => 1950)
  end

  it "should link to each paper page" do
    paper = FactoryGirl.create :paper
    paper.save
    visit papers_path
    expect(page).to have_css('a', :text => 'Show')
  end
end
