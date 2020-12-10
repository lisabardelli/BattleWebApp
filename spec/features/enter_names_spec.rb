
feature 'expects players to fill in their names and submit that form' do
  scenario 'submit names' do
    sign_in_and_play
    expect(page).to have_content 'John vs. Peter'
  end
end
