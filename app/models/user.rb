class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name,
  uniqueness: true, #一意性
  presence: true #必須
  has_many :questions

  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  #emailを不必要に
  def email_required?
    false
  end
  def email_changed?
    false
  end
end
