Rails.application.routes.draw do
  get 'index', to: 'tasks#index'

  get 'show', to: 'tasks#show'

  get 'new', to: 'tasks#new'

  get 'edit', to: 'tasks#edit'

  get 'create', to: 'tasks#create'

  get 'update', to: 'tasks#update'

  get 'destroy', to: 'tasks#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :tasks
end
