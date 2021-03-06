class Lesson < ApplicationRecord
  belongs_to :course
  belongs_to :section

  has_many :tinymce_images, as: :owner

  validates :name, presence: true
  validates :description, presence: true
  validates :section_id, presence: true

  acts_as_list
end