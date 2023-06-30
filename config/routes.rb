Rails.application.routes.draw do
  
  resources :planets

  post 'people', to: 'people#create'
  put 'people/:id', to: 'people#update'
  get 'people', to: 'people#index'
  get 'people/:id', to: 'people#show'
  delete 'people/:id', to: 'people#destroy'

  get 'current_user', to: 'current_user#index'
  devise_for :users, path: '', path_names: {
    sign_in: 'login',
    sign_out: 'logout',
    registration: 'signup'
  },
  controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
