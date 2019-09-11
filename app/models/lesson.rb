class Lesson < ApplicationRecord
  include Authority::Abilities

  belongs_to :course
  belongs_to :section

  has_many :tinymce_images, as: :owner

  validates :name, presence: true
  validates :description, presence: true
  validates :section_id, presence: true

  # mount_uploader :main_image, MainCourseImageUploader
  mount_uploader :file, TinymceImageUploader

  acts_as_list
end