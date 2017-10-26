require 'rails_helper'

describe "author index page", type: :feature do
 it "should display name of all authors" do
  visit authors_path
  expect(page).to have_css('th', :text => 'Name')
 end

 it "should show the name and homepage of an author" do
   author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
   author.save
   visit authors_path
   expect(page).to have_css('td', :text => 'http://wikipedia.org/Alan_Turing')
  end
end
