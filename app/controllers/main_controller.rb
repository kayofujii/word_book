class MainController < ApplicationController

  def index
  end

  def quiz
    @questions = Question.all
    @question = Question.find(params[:id])
    @answer = Answer.new
  end

  def result
    @questions = Question.all
    @answer = Answer.all
  end

end
