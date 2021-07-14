feature 'Testing for form' do
  scenario 'Checks for a form to enter player names' do
    visit('/battle')
    within("form") do
      fill_in 'Name', with: 'alias'
    end
    click_button 'Submit'
    expect(page).to have_content 'alias'
  end  
end