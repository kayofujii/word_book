class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable, :authentication_keys => [:name]

  #必須
  validates_uniqueness_of :name
  validates_presence_of :name
  has_many :questions
  has_many :answers
  has_many :quizzes

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      #認証の条件式を変更する
      where(conditions).where(["name = :value", { :value => name }]).first
    else
      where(conditions).first
    end
  end
  #emailを不必要に
  def email_required?
    false
  end
  def email_changed?
    false
  end
end
