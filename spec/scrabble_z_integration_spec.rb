require('capybara/rspec')
require('./app')
Capybara.app  = Sinatra::Application

describe('the scrabble path', {:type => :feature}) do
  it("takes a word as input and returns the sum of the letters' scrabble scores.") do
    visit('/')
    fill_in('word', :with => 'path')
    click_button('submit')
    expect(page).to(have_content('9'))
  end
end
