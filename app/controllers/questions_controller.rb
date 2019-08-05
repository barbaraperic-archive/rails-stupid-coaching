class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # i will receive the infos from the user
    # the info from the user in the form: params, it's a hash
    # the name of the hash is params
    @user_question = params[:user_question]
    # raise
    if @user_question.include?('?')
      @answer_coach = 'Silly question, get dressed and go to work!'
    elsif @user_question == 'i am going to work right now!'
      @answer_coach = 'Great!'
    else
      @answer_coach = 'I do not care, get dressed and go to work!'
    end
  end
end
