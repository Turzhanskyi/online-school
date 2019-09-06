class Lesson < ApplicationRecord
  belongs_to :course
  belongs_to :section

  validates :name, presence: true
  validates :section_id, presence: true

  acts_as_list
end
