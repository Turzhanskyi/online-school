class UserCourse < ApplicationRecord
  belongs_to :user
  belongs_to :course

  after_create :add_first_user_lessons

  private

    def add_first_user_lessons
      course.sections.order(:position).first.lessons.each do |lesson|
        UserLesson.create!(user: user, lesson: lesson, user_course: self)
      end
    end
end
