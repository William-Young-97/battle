require_relative '../../app'

feature 'Testing for hitpoints' do
  scenario 'Can see both players hitpoints' do
    visit('/')
    fill_in :player_1, with: 'Player 1'
    fill_in :player_2, with: 'Player 2'
    click_button 'Submit'
    expect(page).to have_content "\nPlayer 1 hitpoints: 100"
    expect(page).to have_content "\nPlayer 2 hitpoints: 100"
  end
end