require 'rails_helper'

describe "Edit paper page", type: :feature do
  it "should render without error" do
    paper = FactoryGirl.create :paper
    visit edit_paper_path(paper)
  end

  it "should allow updating author information" do
    paper = FactoryGirl.create :paper
    expect(paper.venue).to_not eq('Mind 49')

    visit edit_paper_path(paper)
    fill_in "paper_venue", :with => 'Mind 49'
    find('input[type="submit"]').click
    paper.reload
    expect(paper.venue).to eq('Mind 49')
  end
end
