class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.string :body
      t.references :user
      t.references :quiz
      t.timestamps
    end
  end
end
