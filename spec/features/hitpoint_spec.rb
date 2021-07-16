feature 'Testing for hitpoints' do
  scenario 'Can see both players hitpoints' do
    sign_in_and_play
    expect(page).to have_content "John hitpoints: 30"
    expect(page).to have_content "Bob hitpoints: 30"
  end

end