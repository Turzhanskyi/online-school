Rails.application.routes.draw do
  root to: 'main#index'

  get 'contact', to: 'static_pages#contact'
  get 'about_us', to: 'static_pages#about_us'

  devise_for :users, path_names: { sign_in: 'login',
                                            sign_out: 'logout',
                                            password: 'secret',
                                            sign_up: 'registration' },
                             controllers: {
                                            registrations: 'users/registrations'
                                          }

  scope :admin do
    devise_for :admins, controllers: { sessions: 'admin/admins/sessions' }
  end

  namespace :admin do
    root to: 'main#index'

    resources :teachers, except: :show
    resources :disciplines, except: :show

    resources :courses, except: :show do
      resources :lessons, except: :show
    end

    namespace :api do
      namespace :lessons do
        resource :mass_update, only: :create
      end

      resources :lessons, only: [] do
        resources :tinymce_images, only: :create, owner: 'lesson'
      end
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
