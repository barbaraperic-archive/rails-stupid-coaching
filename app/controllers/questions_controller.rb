class QuestionsController < ApplicationController
  # def ask
  # end

  def answer
    @user_question = params[:user_question]
    if @user_question.include?('?')
      @answer_coach = 'Silly question, get dressed and go to work!'
    elsif @user_question == 'i am going to work right now!'
      @answer_coach = 'Great!'
    else
      @answer_coach = 'I do not care, get dressed and go to work!'
    end
  end
end
