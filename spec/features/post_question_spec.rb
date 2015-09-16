require 'rails_helper'

feature "User posts a question" do

  scenario "User provides a title shorter than 40 characters" do
    visit '/questions/new'
    fill_in('Title', with: 'something')
    fill_in('Text', with: 'something woofekhgbkvbvifdlkvsflkhvbfvhjbvakvbfdsvklfbv'\
    'fagsafysagraiugiragr7regirgayvksajhdvbajhcvdcjhvjhvsadjhsdjhavsdavjhsdvajhsdv'\
    'fdvhbervilbvirkbiskbfirgerlgkebrgkarbgkwafbarkarbsgkhasbgkhargbaksgbaskbarfkhasbfklrhb')
    click_button('Add question')
    expect(page).to_not have_content('something')
  end

  scenario "User provides both fields meeting or exceeding length requirements" do
    visit '/questions/new'
    fill_in('Title', with: 'this is longer than forty characters wooooo')
    fill_in('Text', with: 'something woofekhgbkvbvifdlkvsflkhvbfvhjbvakvbfdsvklfbv'\
    'fagsafysagraiugiragr7regirgayvksajhdvbajhcvdcjhvjhvsadjhsdjhavsdavjhsdvajhsdv'\
    'fdvhbervilbvirkbiskbfirgerlgkebrgkarbgkwafbarkarbsgkhasbgkhargbaksgbaskbarfkhasbfklrhb')
    click_button('Add question')
    expect(page).to have_content('this is longer than forty characters wooooo')
 end

 scenario "User provides question body shorter than 150 characters" do
   visit 'questions/new'
   fill_in('Title', with: 'this is waayyyyy longer than forty characters wooooo')
   fill_in('Text', with: 'hahahaha waaa')
   click_button('Add question')
   expect(page).to_not have_content('this is waayyyyy longer than forty characters wooooo')
 end

 scenario "User sees error message if title length requirement is not met" do
   visit '/questions/new'
   fill_in('Title', with: 'weeweeweeweeweeee')
   fill_in('Text', with: 'riuwgerinveriy gire geriygr ige ergiuer greiugre gr'\
   'eiu54t85y985y4598eg udfvjusrg egou guier grughsregiurghreururureudfudjrego'\
   'i rfdnbeoiy horhgoriehnrgirejhor')
   click_button('Add question')
   save_and_open_page
   expect(page).to have_content('ERROR: TITLE AND/OR TEXT BODY LENGTH REQUIREMENTS NOT MET!!!!')
 end

 scenario "User sees error message if text body length requirement is not met" do
   visit '/questions/new'
   fill_in('Title', with: 'weeweeweeweeweeeeweeweeeweeeweeeweeeeeweeeweeeweeweeeeeee')
   fill_in('Text', with: 'riuwgerinveriy gire geriygr ige ergiuer greiugre gr'\
   'eiu54t85y985y4598eg udfvjusrg egou guier weewee')
   click_button('Add question')
   save_and_open_page
   expect(page).to have_content('ERROR: TITLE AND/OR TEXT BODY LENGTH REQUIREMENTS NOT MET!!!!')
 end
end
