class QuestionsController < ApplicationController
  # before_action :authenticate_user!

  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)

    if @question.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to :action => "index"
    else
      redirect_to :action => "index"
    end
  end

  def destroy
    Question.find(params[:id]).destroy
    redirect_to action: :index
  end

    private

    def question_params
      params.require(:question).permit(:q_body, :a_body)
    end
  end
