CesunAttendance::Application.routes.draw do
  devise_for :users

  devise_scope :user do
    root :to => 'devise/sessions#new', :via => :get
  end

  resources :users, :only => [ :index, :edit, :update, :destroy ] do
    collection do
      get :role_list
      resource :teacher
    end
  end

  resources :study_plans
  resources :users, :only => :destroy
end
