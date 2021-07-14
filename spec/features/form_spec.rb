require_relative '../../app'

feature 'Testing for form' do
  scenario 'Checks for a form to enter player names' do
    visit('/')
    fill_in :player_1, with: 'alias1'
    fill_in :player_2, with: 'alias2'
    click_button 'Submit'

    save_and_open_page
    
    expect(page).to have_content 'alias1 vs alias2'
  end  
end