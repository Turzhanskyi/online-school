class Course < ApplicationRecord
  belongs_to :teacher
  belongs_to :discipline

  validates :name, presence: true
  validates :description, presence: true
end
