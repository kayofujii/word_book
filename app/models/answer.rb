class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :question
  # 一人が一つの問題に対して、一つの答えを持つ 
  validates_uniqueness_of :question_id, scope: :user_id
end
