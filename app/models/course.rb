class Course < ApplicationRecord
  include Authority::Abilities

  belongs_to :teacher

  has_many :discipline_courses
  has_many :disciplines, through: :discipline_courses

  has_many :lessons, dependent: :restrict_with_error
  has_many :sections, dependent: :restrict_with_error

  validates :name, presence: true
  validates :description, presence: true
  validates :disciplines, presence: true

  # mount_uploader :main_image, MainCourseImageUploader
  mount_uploader :file, TinymceImageUploader

  accepts_nested_attributes_for :sections, reject_if: :all_blank, allow_destroy: true
end
