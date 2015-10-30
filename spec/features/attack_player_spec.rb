require 'spec_helper'

feature 'Attack another player' do
  scenario 'shows who is attacking' do
    sign_in_and_play
    expect(page).to have_content 'Radu is attacking'
  end
  scenario 'reduces hit points in attacked player' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content 'Sam: 50/60 HP'
  end
end
