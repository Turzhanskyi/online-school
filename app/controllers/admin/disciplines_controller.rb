class Admin::DisciplinesController < Admin::BaseController
add_breadcrumb 'Дисципліни', :admin_disciplines_path

before_action :set_discipline, only: [:edit, :update, :destroy]

def index
  @disciplines = Discipline.order(id: :desc).page(params[:page])
end

def new
  add_breadcrumb 'Нова дисципліна', new_admin_discipline_path

  @discipline = Discipline.new
end

def create
  @discipline = Discipline.new(@discipline_params)

  if @discipline.save
    redirect_to admin_disciplines_path, notice: 'Дисципліна успішно створена'
  else
    add_breadcrumb 'Нова дисципліна', new_admin_discipline_path

    flash.now[:alert] = 'Не вдалося створити дисципліну'
    render 'new'
  end
end

def edit
  add_breadcrumb "Редагувати #{@discipline.name}", [:edit, :admin, @discipline]
end

def update
  if @discipline.update(discipline_params)
    redirect_to admin_disciplines_path, notice: 'Дані дисципліни оновлено'
  else
    add_breadcrumb "Редагувати #{@discipline.name}", [:edit, :admin, @discipline]

    flash.now[:alert] = 'Не вдалося оновити дані дисципліни'
    render 'edit'
  end
end

def destroy
  if @discipline.destroy
    redirect_to admin_disciplines_path, notice: 'Дисципліну успішно видалено'
  else
    redirect_to admin_disciplines_path, alert: 'Не вдалось видалити дисципліну'
  end
end

private
    def set_discipline
      @discipline = Discipline.find(params[:id])
    end

    def set_active_main_item
      @main_menu[:disciplines][:active] = true
    end

    def discipline_params
      params.require(:discipline).permit(:name)
    end
end