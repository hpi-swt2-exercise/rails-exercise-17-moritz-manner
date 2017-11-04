require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should create an instance of paper" do
    paper = Paper.new(title: 'COMPUTING MACHINERY AND INTELLIGENCE', venue: 'Mind 49: 433-460', year: 1950)
    expect(paper.title).to eq('COMPUTING MACHINERY AND INTELLIGENCE')
    expect(paper.venue).to eq('Mind 49: 433-460')
    expect(paper.year).to eq(1950)
  end

  it "must have a title" do
    paper = Paper.new
    paper.title = ''
    expect(paper).to_not be_valid
  end
end
