class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.string :q_body
      t.string :a_body
      t.timestamps
    end
  end
end
