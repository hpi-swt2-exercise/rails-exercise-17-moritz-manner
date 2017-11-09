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
  it "should have a link to the paper edit page" do
    paper = FactoryGirl.create :paper
    visit papers_path
    expect(page).to have_css('a', :text => 'Edit')
  end
  it "should have a link to destroy an paper" do
    paper = FactoryGirl.create :paper
    visit papers_path
    expect(page).to have_css('a', :text => 'Destroy')
  end
  it 'should not show the paper published in 1968' do
    paper1950 = FactoryGirl.create :paper
   	paper1968 = FactoryGirl.create :paper, year: 1968, title: "great title", venue: 'boring venue'

   	visit papers_path + '?year=1950'

   	expect(page).to have_text(paper1950.title)
   	expect(page).not_to have_text(paper1968.title)
  end
end
