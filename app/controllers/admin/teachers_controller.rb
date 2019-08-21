class Admin::TeachersController < Admin::BaseController
  def index
    @teachers = Teacher.order(id: :desc)
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
  end

  def destroy
  end

  private
    def set_active_main_item
      @main_menu[:teachers][:active] = true
    end

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :description)
  end
end
