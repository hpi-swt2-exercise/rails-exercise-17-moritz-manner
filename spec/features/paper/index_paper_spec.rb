require 'rails_helper'

describe 'Paper index page', type: :feature do
  it "should render without error" do
    author = FactoryGirl.create :paper
    visit papers_path
  end
end
