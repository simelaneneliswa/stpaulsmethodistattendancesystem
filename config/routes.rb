Rails.application.routes.draw do
  devise_for :users
  get 'students/index'
  get 'students/show'
  get 'students/new'
  get 'students/create'
  get 'students/edit'
  get 'students/update'
  get 'students/destroy'
  #get 'attendances/index'
  #get 'attendances/new'
  #get 'attendances/create'
  #get 'attendances/edit'
  #get 'attendances/update'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :students do
    resources :attendances, only: [:index, :new, :create, :edit, :update]
  end

  root 'students#index'
end
