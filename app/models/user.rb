class User < ActiveRecord::Base
  has_secure_password

  has_many :matches
  has_many :reviews

  validates :first_name, presence: true, length: { maximum: 20 }
  validates :last_name, presence: true, length: { maximum: 20 }
  validates :username, presence: true, uniqueness: true, length: {minimum: 3, maximum: 20}
  validates :email, presence: true, uniqueness: true
  validates :phone, presence: true
  validates :birthday, presence: true
  validates :profile_pic, presence: true

end