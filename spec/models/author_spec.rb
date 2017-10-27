require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should save information" do
    author = Author.new(first_name: 'Alan', last_name: 'Turing', homepage: 'http://wikipedia.org/Alan_Turing')
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.homepage).to eq('http://wikipedia.org/Alan_Turing')
  end
  it "should display the full name" do
    author = Author.new(first_name: 'Alan', last_name: 'Turing')
    expect(author.first_name).to eq('Alan')
    expect(author.last_name).to eq('Turing')
    expect(author.name).to eq('Alan Turing')
  end
  it "should only allow to save author with last name" do
    author = Author.new
    author.last_name = ''
    expect(author).not_to be_valid
  end
end
