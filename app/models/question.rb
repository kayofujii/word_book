class Question < ApplicationRecord
  validates :q_body, presence: true
  validates :a_body, presence: true
end
