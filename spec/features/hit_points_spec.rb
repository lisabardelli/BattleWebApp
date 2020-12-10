feature 'viewing hit points' do
    scenario 'returns hit points' do
        sign_in_and_play
      expect(page).to have_content 'John HP: 100'
    end
  end