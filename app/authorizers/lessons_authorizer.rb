class LessonAuthorizer < ApplicationAuthorizer
  # Instance method: can this user delete this particular schedule?
  def accessable_by?(user)
    resource.user_lessons.where(user: user).exists?
  end
end