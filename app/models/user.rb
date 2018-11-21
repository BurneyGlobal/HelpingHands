class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  belongs_to :profession
  has_many :task_volunteers
  has_many :tasks, through: :task_volunteers
  has_many :user_roles
end
