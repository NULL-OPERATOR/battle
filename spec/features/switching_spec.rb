require 'capybara'
require 'web_helpers'

feature 'switching' do
  scenario 'switches from player one to two' do
    sign_in_and_play
    click_button('Attack')
    expect(page).to have_content('Sam is attacking')
  end
end
