feature 'Testing for form' do
  scenario 'Checks for a form to enter player names' do
    sign_in_and_play
    expect(page).to have_content 'John vs Bob'
  end  
end