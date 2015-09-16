class QuestionsController < ApplicationController
  def index
    @questions = Question.order(created_at: :desc)
  end

  def show
    @question = Question.find(params[:id])
  end

  def new
    @question = Question.new()
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = 'WHOOOOHOOOOOOOO'
      redirect_to '/questions'
    else
      flash[:notice] = 'ERROR: TITLE AND/OR TEXT BODY LENGTH REQUIREMENTS NOT MET!!!!'
      redirect_to '/questions/new'
    end
  end

protected
  def question_params
    params.require(:question).permit(:title, :text)
  end
end
