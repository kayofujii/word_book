class AnswersController < ApplicationController
  def create
      answer_params.each{ |key, variable|
      @answer = Answer.new(quiz_id: key, body: variable, user_id: current_user.id)
      @answer.save
    }
    redirect_to action: "index"
  end

  def index
    @answers = Answer.all
    @quizzes = Quiz.all
    @count = 0
    @quizzes.zip(@answers).each do |quiz, answer|
      if quiz.right_answer == answer.body
        @count += 1
      end
    end
    @quizcount =  @quizzes.count
    kekka = ( @count / @quizcount.to_f ) * 100.floor
    @kekka = kekka.floor
  end

  # def destroy
  #   Answer.find(params[:id]).destroy
  #   redirect_to action: :index
  # end

  private
  def answer_params
    # binding.pry
    # params.require(:answer).permit!.to_h
    params.require(:answer).permit!.to_unsafe_h
  end
end

# if (@answers == nil)
#   answer_params.each{ |key, variable|
#     @answer = Answer.new(quiz_id: key, body: variable, user_id: current_user.id)
#     @answer.save
#   }
#    redirect_to action: "index"
# else
#   Answer.find(params[:id].destroy
#   answer_params.each{ |key, variable|
#     @answer = Answer.new(quiz_id: key, body: variable, user_id: current_user.id)
#     @answer.save
#   }
#  redirect_to action: "index"
# end
#   藤井
