class Admin::TeachersController < Admin::BaseController
  before_action :set_teacher, only: [:edit, :update, :destroy]

  def index
    @teachers = Teacher.order(id: :desc).page(params[:page])
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)

    if @teacher.save
      redirect_to admin_teachers_path, notice: 'Викладач успішно створений'
    else
      flash.now[:alert] = 'Не вдалося створити викладача'
      render 'new'
    end
  end

  def edit
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to admin_teachers_path, notice: 'Дані викладача оновлено'
    else
      flash.now[:alert] = 'Не вдалося оновити дані викладача'
      render 'edit'
    end
  end

  def destroy
    if @teacher.destroy
      redirect_to admin_teachers_path, notice: 'Викладача успішно видалено'
    else
      redirect_to admin_teachers_path, alert: 'Не вдалось видалити Викладача'
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
