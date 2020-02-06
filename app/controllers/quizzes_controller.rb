class QuizzesController < ApplicationController
  before_action :authenticate_user!

  def index
    @quizzes = Quiz.all
    # @quiz = Quiz.find(params[:quiz_id])
    @answer = Answer.new
  end

  def new
    @quiz = Quiz.new
    @quiz = Quiz.find(params[:quiz_id])
    @answer = Answer.new
  end

  def create
    @quiz = Quiz.new(quiz_params)
    @quiz.user_id = current_user.id
    if @quiz.save
      redirect_to action: "index"
    else
      redirect_to action: "new"
    end
  end

  def show
    @quiz = Quiz.find(params[:id])
    @answers = @quiz.answers
    @answer = Answer.new
  end

  def edit
    @quiz = Quiz.find(params[:id])
  end

  def update
    @quiz = Quiz.find(params[:id])
    if @quiz.update(quiz_params)
      redirect_to :action => "index"
    else
      redirect_to :action => "index"
    end
  end

  def destroy
    quiz.find(params[:id]).destroy
    redirect_to action: :index
  end

    private

    def quiz_params
      params.require(:quiz).permit(:question, :right_answer)
    end

end
