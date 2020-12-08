
feature 'expects players to fill in their names (in a form), submit that form, and see those names on-screen' do
  scenario 'submt names' do
    visit('/')
    fill_in(:player_1, with: 'John')
    fill_in(:player_2, with: 'Peter')
    click_button('Submit')
    expect(page).to have_content 'John vs Peter'
  end
end