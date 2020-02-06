class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :quiz
  # 一人が一つの問題に対して、一つの答えを持つ
  validates_uniqueness_of :quiz_id, scope: :user_id
end
