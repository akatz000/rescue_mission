require 'rails_helper'

feature "User views index of questions" do
  background do
    Question.create(
    title: 'something hahahahahahahhahahahahahahahaaaaaa',
    text: 'askjfraskgfjroruefhcwirvgniruekryw58i4rnt432qmty78rug7tsi4u7yte8yoriu'\
    '4hw35tgeru98hiut5geru9fv8sry7gq24yu5iorey57irugy58479e8grhiubdgt437egr9u5y3wegr8hiu5y84u'
    )
    sleep(1)
    Question.create(
    title: 'what the heck lalalalalalalalalaaaaaaaaaaaaaaaaa',
    text: 'writv758y7g45bgv5o7vn357otvnqgp45mg98gcm5wv985gvnerugewhsfiudlkshgreso5uy0943urigedfo;ksrgiuvrew9hot8ifvpr9ist8uyeriy7tregjkijtu8erto8htgjogreiherhi8bthbttrh8vghrge.')
    sleep(1)
    Question.create(title: 'something else waaaaaaaaaaaaaaaaaaaaaaaaaaaaa', text: 'FIYARIUYVRIR7WIWEGREVIREVEBR975WTG785WYT3489TU35289GHETIUFDBVREIOQGHEH43HERUIVHERGU34HT98GHERPGHERWGPUERWHGERGHERPOUGHEROPUGHEREORUGHEROGUHEROUGHWEROHERTOH')
  end

  scenario "User sees title of each question" do
    visit '/questions'
    expect(page).to have_content('something hahahahahahahhahahahahahahahaaaaaa')
    expect(page).to have_content('what the heck lalalalalalalalalaaaaaaaaaaaaaaaaa')
    expect(page).to have_content('something else waaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
  end

  scenario "User sees questions listed in order, most recently posted first" do
    visit '/questions'
    expect(page.text.index("something else waaaaaaaaaaaaaaaaaaaaaaaaaaaaa")).
    to be < page.text.index("what the heck lalalalalalalalalaaaaaaaaaaaaaaaaa")
  end
end
