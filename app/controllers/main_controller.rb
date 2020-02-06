class MainController < ApplicationController

  def index
  end

  def quiz
    @questions = Question.all
    # @question = Question.find(params[:id])
    # @answer = Answer.new
    # @answers = @question.answers
  end

end
