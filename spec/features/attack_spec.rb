feature 'Allows the user to attack' do
  scenario 'Confirms player 1 has attacked player 2' do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content 'Player 1 attacked Player 2!'
  end
end