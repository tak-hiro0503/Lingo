class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :goal
  has_one :user_level
  has_many :todos
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
