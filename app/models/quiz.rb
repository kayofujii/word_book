class Quiz < ApplicationRecord
  validates :question, presence: true
  validates :right_answer, presence: true
  belongs_to :user
  has_many :answers, dependent: :destroy
end
