require 'rails_helper'
require 'capybara'

feature "User views index of questions" do
  background do
    Question.create(title: 'something', text: 'some text here')
    Question.create(title: 'something else', text: 'some more text here')
  end

  scenario "User sees title of each question" do
    visit '/events'
    expect(page).to have_content('something')
    expect(page).to have_content('something else')
  end

  scenario "User sees questions listed in order, most recently posted first" do
    visit '/events'
    expect('something else').to appear_before('something')
  end
end
