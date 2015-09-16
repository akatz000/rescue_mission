require 'rails_helper'

feature "User views question details" do
    background do
      Question.create(
      title: 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      text: 'FIYARIUYVRIR7WIWEGREVIREVEBR975WTG785WYT3489TU35289GHETIUFDBVREIOQG'\
      'HEH43HERUIVHERGU34HT98GHERPGHERWGPUERWHGERGHERPOUGHEROPUGHEREORUGHEROGUHEROUGHWEROHERTOH'\
      'sdfhgarbgalrbgrkgbarlsabvlkhasbvasashsahklaskhbaskbslkhskhfvfkhlsafhklsaklhbsfkhlbsakhbasfklhb'
      )
      sleep(1)
      Question.create(
      title: 'dsfhgdfigshgksfdgkdfshgifdghfdksghfdkghsfkgh',
      text: 'wasaohw9ery4t9giurtdfgiwur3y89ieufg79rfg97fg734y53sydifgrsdk arcine'\
      'f rie g7re g57t3ryigv578erig eryg riyiyuurbiugiurgiuregiuhfiuhidfiergiuriuhsriuh'\
      'sadhjbsdlhvbflaihbvaskhlvbarsvasfvakshlvbarvbafsvlkafbvlkasfbvlaskvbflkvbasfvlkjasbvlkj'
      )
      sleep(1)
      Question.create(
      title: 'sagsfiughgiuriudfgiurhrivbtriuhreiughdiughergurfiurg',
      text: 'afbregriurvklrbrekriubrguerbgruufivhuherougrhouabfoerbgourfwialvaiv'\
      'berifgreiurierggilrgfrwilufgrweiufrgreiuvrwifewfiurbiruwfbewuifhgriuvbrougbwroufbweouf'\
      'sdfkhvsifraivfvfvbaskhvbsakjvhafsviabskhasbvadhfvbshvbsdhvbasdhvbsdkvhbsdvkhsabd'
      )
    end

    scenario "User sees question titles on detail page" do
      visit '/questions'
      click_link('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')
      expect(page).to have_content('aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa')

      visit '/questions'
      click_link('dsfhgdfigshgksfdgkdfshgifdghfdksghfdkghsfkgh')
      expect(page).to have_content(
      'wasaohw9ery4t9giurtdfgiwur3y89ieufg79rfg97fg734y53sydifgrsdk arcine'\
      'f rie g7re g57t3ryigv578erig eryg riyiyuurbiugiurgiuregiuhfiuhidfiergiuriuhsriuh'\
      'sadhjbsdlhvbflaihbvaskhlvbarsvasfvakshlvbarvbafsvlkafbvlkasfbvlaskvbflkvbasfvlkjasbvlkj'
      )
    end

    scenario "User sees question text on detail page" do
      visit '/questions'
      click_link('sagsfiughgiuriudfgiurhrivbtriuhreiughdiughergurfiurg')
      expect(page).to have_content(
      'afbregriurvklrbrekriubrguerbgruufivhuherougrhouabfoerbgourfwialvaiv'\
      'berifgreiurierggilrgfrwilufgrweiufrgreiuvrwifewfiurbiruwfbewuifhgriuvbrougbwroufbweouf'\
      'sdfkhvsifraivfvfvbaskhvbsakjvhafsviabskhasbvadhfvbshvbsdhvbasdhvbsdkvhbsdvkhsabd'
      )

      visit '/questions'
      click_link('dsfhgdfigshgksfdgkdfshgifdghfdksghfdkghsfkgh')
      expect(page).to have_content(
      'wasaohw9ery4t9giurtdfgiwur3y89ieufg79rfg97fg734y53sydifgrsdk arcine'\
      'f rie g7re g57t3ryigv578erig eryg riyiyuurbiugiurgiuregiuhfiuhidfiergiuriuhsriuh'\
      'sadhjbsdlhvbflaihbvaskhlvbarsvasfvakshlvbarvbafsvlkafbvlkasfbvlaskvbflkvbasfvlkjasbvlkj'
      )
    end
end
