require 'spec_helper'

feature 'Display player into' do
  scenario 'see winner by displaying player hit points' do
    sign_in_and_play
    find('div.hit-points', text: 'Sam: 60/60 HP')
  end
end
