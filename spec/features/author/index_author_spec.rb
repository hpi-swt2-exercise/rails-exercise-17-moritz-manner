require 'rails_helper'

describe "author index page", type: :feature do
 it "should display name of all authors" do
   visit authors_path
  expect(page).to have_css('th', :text => 'Name')
 end
end
