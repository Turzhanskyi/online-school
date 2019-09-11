class User < ApplicationRecord
  include Authority::UserAbilities

  # Include default devise modules. Others available are:
  # :lockable, :timeoutable,  and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :trackable, :confirmable

  validates :first_name, presence: true
  validates :last_name, presence: true
end
