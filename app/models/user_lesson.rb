class UserLesson < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  belongs_to :user_course
end
