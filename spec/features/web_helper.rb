def sign_in_and_play
  visit('/')
  fill_in :player_1, with: 'John'
  fill_in :player_2, with: 'Bob'
  click_button 'Submit'
end
