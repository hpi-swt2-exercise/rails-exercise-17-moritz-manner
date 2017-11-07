require 'rails_helper'

describe "Show author page", type: :feature do
  it "should display a paper's title" do
    paper = FactoryGirl.create :paper
    paper.save()
    visit paper_path(paper)
    expect(page).to have_content('COMPUTING MACHINERY AND INTELLIGENCE')
  end
end
