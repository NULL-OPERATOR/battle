require 'spec_helper'

feature 'Entering player names' do
  scenario 'by filling in a form' do
    sign_in_and_play
    expect(page).to have_content 'Radu vs Sam'
  end
end

feature 'Display player into' do
  scenario 'see winner by displaying player hit points' do
    sign_in_and_play
    find('div.hit-points', text: 'Sam: 60/60 HP')
  end
end

feature 'Attack another player' do
  scenario 'shows a confirmation of the attack' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'You attacked player 2'
  end
end
