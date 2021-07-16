feature 'Testing for form' do
  scenario 'Checks for a form to enter player names' do
    sign_in_and_play
    expect(page).to have_content 'Player 1 vs Player 2'
  end  
end