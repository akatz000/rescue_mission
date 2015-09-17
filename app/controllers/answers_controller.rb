class AnswersController < ApplicationController
  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.build(answer_params)
    # binding.pry
    if @answer.save
      flash[:notice] = 'WHOOOOHOOOOOOOO'
      redirect_to '/questions'
    else
      flash[:notice] = 'ERROR! ANSWER DOES NOT MEET LENGTH REQUIREMENTS!'
      redirect_to '/questions/' + "#{params[:question_id]}"
    end
  end

  protected

  def answer_params
    params.require(:answer).permit(:text)
  end
end
