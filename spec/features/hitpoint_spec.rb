feature 'Testing for hitpoints' do
  scenario 'Can see both players hitpoints' do
    sign_in_and_play
    expect(page).to have_content "\nPlayer 1 hitpoints: 100"
    expect(page).to have_content "\nPlayer 2 hitpoints: 100"
  end
end