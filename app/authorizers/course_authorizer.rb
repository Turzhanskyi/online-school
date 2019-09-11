class CourseAuthorizer < ApplicationAuthorizer
  # Instance method: can this user delete this particular schedule?
  def accessable_by?(user)
    resource.user_courses.where(user: user).exists?
  end
end