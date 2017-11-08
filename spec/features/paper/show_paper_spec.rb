require 'rails_helper'

describe "Show author page", type: :feature do
  it "should display a paper's title, venue and year" do
    paper = FactoryGirl.create :paper

    visit paper_path(paper)
    expect(page).to have_content('COMPUTING MACHINERY AND INTELLIGENCE')
    expect(page).to have_content('Mind 49: 433-460')
        expect(page).to have_content(1950)
  end
  it "should show the paper's author" do
    paper = FactoryGirl.create :paper
    author = FactoryGirl.create :author

    paper.authors << author
    visit paper_path(paper)
    expect(page).to have_content(paper.authors.first.name)
  end
end
