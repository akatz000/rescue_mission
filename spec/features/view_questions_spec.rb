require 'rails_helper'

feature "User views index of questions" do
  background do
    Question.create(title: 'something', text: 'some text here')
    sleep(1)
    Question.create(title: 'what the heck', text: 'HALP.')
    sleep(1)
    Question.create(title: 'something else', text: 'some more text here')
  end

  scenario "User sees title of each question" do
    visit '/questions'
    expect(page).to have_content('something')
    expect(page).to have_content('what the heck')
    expect(page).to have_content('something else')
  end

  scenario "User sees questions listed in order, most recently posted first" do
    visit '/questions'
    expect(page.text.index("something else")).to be < page.text.index("what the heck")
  end
end
