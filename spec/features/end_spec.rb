require 'web_helpers'

feature 'GAME END' do
  it 'expects a game over message' do
    sign_in_and_play
    11.times { click_button('Attack') }
    expect(page).to have_content("GAMEOVER")
  end
end
