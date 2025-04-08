class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :validatable

  # Associations
  has_many :tasks, dependent: :destroy

  # Validations
  validates :name, presence: true
end
