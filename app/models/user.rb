class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  validates :name,
  uniqueness: true, #一意性
  presence: true #必須
  has_many :questions
  has_many :answers
  has_many :quiz
  #emailを不必要に
  def email_required?
    false
  end
  def email_changed?
    false
  end
end
