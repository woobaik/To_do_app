Rails.application.routes.draw do

  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  resources :users
  root 'welcome#index'

  resources :tasks

  get 'tasks/:id/complete/:completed', to: 'tasks#complete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
