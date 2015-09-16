require 'rails_helper'

RSpec.describe Question, type: :model do
    Question.create(
    title: 'dfsighgbitbirebgiurebgibhreiugriughrigubtibriugraugaruvbreuvbrauvrjnarobrjbrai',
    text: 'siughraiuawef9ugh957gruibv785th473hf59vh9g479g437gv749fiwa'\
    'ebvfhvkb4fb4arvbrgbariuasdhfgrjhfvsauyfvavyerbrsfiyasfyirggeriwfe'\
    'ryivyerifbewyifviryehgbiywhaksfbviyhtkgiuwea'
    )

  it "Should not store question with title less than 40 characters" do
    Question.create(
    title: 'waaaa boohoo',
    text: 'hahahahahahahahahahahahahaloooooooooolzzzzz'
    )
    expect(Question.last.title).to_not eq('waaaa boohoo')
  end

  it "Should not store question with text body less than 150 characters" do
    Question.create(
    title: 'hellowisgsoerbgairbvraewuogbdsalrkjbgvuiarjkgfhdnb,dks',
    text: 'something'
    )
    expect(Question.last.text).to_not eq('hellowisgsoerbgairbvraewuogbdsalrkjbgvuiarjkgfhdnb,dks')
  end

  it "Should store question with text length >= 150 && title length >= 40" do
    Question.create(
    title: 'rigrireireiuriyrriurirriugrihrgiuhrgiurhgiurhg',
    text: 'favhfhvielvbkburheuirebietbrkjvbzkcb fjklnergenrg'\
    '43578 7grihvfbiyrbioriygrgiuebkhzbvckl flkvberiugbreiugirvbflvbilberigberl'\
    'vvblirgbiwrbvaflvberigbwfiuvbfiv'
    )
    expect(Question.last.title).to eq('rigrireireiuriyrriurirriugrihrgiuhrgiurhgiurhg')
  end
end
