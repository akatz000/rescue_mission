require 'rails_helper'

feature "User views question details" do
    background do
      Question.create(title: 'What is this?', text: 'help me omgomgomg')
      Question.create(title: 'Heeelllllppp', text: 'hahaha')
      Question.create(title: 'something', text: 'lalala')
    end

    scenario "User sees question titles on detail page" do
      visit '/questions'
      click_link('What is this?')
      expect(page).to have_content('What is this?')

      visit '/questions'
      click_link('something')
      expect(page).to have_content('something')
    end

    scenario "User sees question text on detail page" do
      visit '/questions'
      click_link('something')
      expect(page).to have_content('lalala')

      visit '/questions'
      click_link('What is this?')
      expect(page).to have_content('help me omgomgomg')
    end
end
