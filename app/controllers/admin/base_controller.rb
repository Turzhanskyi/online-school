class Admin::BaseController < ApplicationController
  layout 'admin'

  before_action :set_main_menu, except: :destroy
  before_action :set_active_main_item, except: :destroy

  private
    def set_main_menu
      @main_menu = { courses: { name: 'Курс', path: admin_courses_path },
                     teachers: { name: 'Викладачі', path: admin_teachers_path },
                     disciplines: { name: 'Дисципліни', path: admin_disciplines_path } }
    end
end