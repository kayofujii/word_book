class AnswersController < ApplicationController
  def create
    answer_params.each{ |key, variable|
      @answer = Answer.new(quiz_id: key, body: variable, user_id: current_user.id)
      @answer.save
    }
    redirect_to action: "index"
    # @answer = Answer.new(answer_params)
    # @answer.user_id = current_user.id
    # binding.pry
    # if @answer.save
    #   redirect_to action: "index"
    # else
    #   redirect_to action: "index"
    # end
  end

  def index
    @answers = Answer.all
    @quizzes = Quiz.all
  end

  private
  def answer_params
    # binding.pry
    params.require(:answer).permit!.to_h
  end
end
