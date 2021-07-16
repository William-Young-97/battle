feature 'Attacking' do
  scenario 'attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'John attacked Bob!'
  end

 
  scenario 'reduce Player 2 HP by 10' do
    sign_in_and_play
    click_link 'Attack'
    click_button('See damage!')
    expect(page).not_to have_content "\nJohn hitpoints: 30"
    expect(page).to have_content "Bob hitpoints: 20"
  end
end