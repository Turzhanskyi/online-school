class Admin::TeachersController < Admin::BaseController
  add_breadcrumb 'Викладачі', :admin_teachers_path

  before_action :set_teacher, only: [:edit, :update, :destroy]

  def index
    @teachers = Teacher.order(id: :desc).page(params[:page])
  end

  def new
    add_breadcrumb 'Новий викладач', new_admin_teacher_path

    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to admin_teachers_path, notice: 'Викладач успішно створений'
    else
      add_breadcrumb 'Новий викладач', new_admin_teacher_path

      flash.now[:alert] = 'Не вдалося створити викладача'
      render 'new'
    end
  end

  def edit
    add_breadcrumb "Редагувати #{@teacher.first_name} #{@teacher.last_name}", [:edit, :admin, @teacher]
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to admin_teachers_path, notice: 'Дані викладача оновлено'
    else
      add_breadcrumb "Редагувати #{@teacher.first_name} #{@teacher.last_name}", [:edit, :admin, @teacher]

      flash.now[:alert] = 'Не вдалося оновити дані викладача'
      render 'edit'
    end
  end

  def destroy
    if @teacher.destroy
      redirect_to admin_teachers_path, notice: 'Викладача успішно видалено'
    else
      redirect_to admin_teachers_path, alert: 'Не вдалось видалити викладача'
    end
  end

  private
    def set_teacher
      @teacher = Teacher.find(params[:id])
    end

    def set_active_main_item
      @main_menu[:teachers][:active] = true
    end

    def teacher_params
      params.require(:teacher).permit(:first_name, :last_name, :description)
    end
end
