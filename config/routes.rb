Rails.application.routes.draw do
  devise_for :users
  
  # Define resources with nested attendances routes
  resources :students do
    resources :attendances, only: [:index, :new, :create, :edit, :update]
  end

  # Define explicit routes for students (optional)
  # get 'students/index'
  # get 'students/show'
  # get 'students/new'
  # get 'students/create'
  # get 'students/edit'
  # get 'students/update'
  # get 'students/destroy'

  # Define root path
  root 'students#index'
end

