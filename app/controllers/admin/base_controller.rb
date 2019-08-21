class Admin::BaseController < ApplicationController
  layout 'admin'

  before_action :set_main_menu, except: :destroy
  before_action :set_active_main_item, except: :destroy

  private
    def set_main_menu
      @main_menu = { teachers: { name: 'Викладачі', path: admin_teachers_path } }
    end
end