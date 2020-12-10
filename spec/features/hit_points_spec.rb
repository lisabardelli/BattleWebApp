feature 'viewing hit points' do
  scenario 'returns hit points' do
    sign_in_and_play
    expect(page).to have_content 'John HP: 100'
  end

  scenario 'reduces player_2 points when player_1 attacks' do
    sign_in_and_play
    click_button('Player 1 Attack')
    expect(page).to have_content 'Peter HP: 90'
  end
end
