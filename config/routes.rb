Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'design', to: 'pages#design'

  resources :events, only: [ :show ] do
    resources :tasks, only: [ :show, :create ]
    resources :hubs, only: [ :index ]
    resources :resource_assets, only: [ :index ]
  end

  post "tasks/:task_id/users/:user_id/assign", to: 'task_volunteers#create', as: :assign_task

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
