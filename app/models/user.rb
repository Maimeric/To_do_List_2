class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # has_many :tasks
  devise :database_authenticatable, :registerable,
         :recoverable,  :validatable

  validates :last_name, presence: true
end
