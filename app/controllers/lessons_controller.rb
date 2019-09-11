class LessonsController < ApplicationController
  before_actions :set_course, only: [:index, :show]
  before_actions :set_breadcrumbs, only: [:index, :show]

  def index
    authorize_action_for @course
    add_breadcrumb 'Програма занять', '#'
  end

  def show
    @lesson = @course.lessons.find(params[:id])
    authorize_action_for @lesson

    add_breadcrumb 'Програма занять', [@course, :lessons]
    add_breadcrumb @lesson.name, '#'
  end

  private

    def set_course
      @course = Course.find(params[:course_id])
    end

    def set_breadcrumbs
      add_breadcrumb @course.name, @course
    end
end
