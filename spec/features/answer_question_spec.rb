require 'rails_helper'

feature "User answers a question" do
  background do
    Question.create(
    title: 'qwqwqwqwqwqwqwqwwqwqqwqqwwqwqiuiuqwiquwiquwqiuw',
    text: 'wriuweiwuewiuwieuweiwueiwuewiueieuweiwjdksjdksdjwkwoeiwoislslfkowei'\
    'jsfkjflkfsdlfsdlfjsabkdslfbsdakjlfbasdfkjbsdkfjlabsadkfjhsdlf;hasdfl;ahaldsfhdlJ'\
    'sdkghsaksvisbsksaiasfiusiuasdghsiugsivrirbhgiushvsadiubgragofbjfbfjsdbkjsdbgsdjk'
    )
  end

  scenario "User should see error message if answer is invalid (not enough characters)" do
    visit '/questions'
    click_link('qwqwqwqwqwqwqwqwwqwqqwqqwwqwqiuiuqwiquwiquwqiuw')
    click_button('Submit answer')
    fill_in('Text', with: 'not 50 characters!')
    expect(page).to have_content('ERROR! ANSWER DOES NOT MEET LENGTH REQUIREMENTS!')
  end
end
