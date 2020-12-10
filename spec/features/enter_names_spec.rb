
feature 'expects players to fill in their names and submit that form' do
  scenario 'submit names' do
    visit('/')
    fill_in(:player_1, with: 'John')
    fill_in(:player_2, with: 'Peter')
    click_button('Submit')
    expect(page).to have_content 'John vs. Peter'
  end
end
