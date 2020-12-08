feature 'enter names' do
  scenario 'submitting names' do
    visit('/home')
    fill_in :player_1_name, with: 'Dave'
    fill_in :player_2_name, with: 'Aman'
    click_button 'Submit'
    expect(page).to have_content 'Dave vs. Aman'
  end
end
