class CreateQuizzes < ActiveRecord::Migration[6.0]
  def change
    create_table :quizzes do |t|
      t.string :question
      t.string :right_answer
      t.references :user
      t.timestamps
    end
  end
end
