require 'spec_helper'

feature 'Entering player names' do
  scenario 'by filling in a form' do
    visit('/')
    fill_in(:player_one_name, with: 'Radu')
    fill_in(:player_two_name, with: 'Sam')
    click_button('Submit')
    expect(page).to have_content 'Radu vs Sam'
  end
end
