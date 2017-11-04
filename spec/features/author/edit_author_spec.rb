require 'rails_helper'

describe "Edit author page", type: :feature do

   it "should render without error" do
     author = FactoryGirl.create :author
     visit edit_author_path(author)
   end

   it "should allow updating author information" do
     author = FactoryGirl.create :author
     expect(author.first_name).to_not eq('Alan Mathison')

     visit edit_author_path(author)
     fill_in "author_first_name", :with => 'Alan Mathison'
     find('input[type="submit"]').click
     author.reload
     expect(author.first_name).to eq('Alan Mathison')
   end
 end
