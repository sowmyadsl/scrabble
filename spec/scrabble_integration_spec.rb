require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word play path', {:type => :feature}) do
  it('processes the user entry and returns it with number') do
    visit('/')
    fill_in('title', :with => 'epicodus')
    click_button('Send')
    expect(page).to have_content(13)
  end
end
