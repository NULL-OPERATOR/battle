def sign_in_and_play
  visit('/')
  fill_in(:player_one_name, with: 'Radu')
  fill_in(:player_two_name, with: 'Sam')
  click_button('Submit')
end
