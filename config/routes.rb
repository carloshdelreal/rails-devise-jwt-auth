Rails.application.routes.draw do
  
  ### People
  post 'people', to: 'people#create'
  put 'people/:id', to: 'people#update'
  get 'people', to: 'people#index'
  get 'people/:id', to: 'people#show'
  delete 'people/:id', to: 'people#destroy'

  ### Planets
  post 'planets', to: 'planets#create'
  put 'planets/:id', to: 'planets#update'
  get 'planets', to: 'planets#index'
  get 'planets/:id', to: 'planets#show'
  delete 'planets/:id', to: 'planets#destroy'

  ### Films
  post 'films', to: 'films#create'
  put 'films/:id', to: 'films#update'
  get 'films', to: 'films#index'
  get 'films/:id', to: 'films#show'
  delete 'films/:id', to: 'films#destroy'

  ### FilmPlanets
  post 'film_planets', to: 'film_planets#create'
  put 'film_planets/:id', to: 'film_planets#update'
  get 'film_planets', to: 'film_planets#index'
  get 'film_planets/:id', to: 'film_planets#show'
  delete 'film_planets/:id', to: 'film_planets#destroy'

  ### FilmPerson
  post 'film_people', to: 'film_people#create'
  put 'film_people/:id', to: 'film_people#update'
  get 'film_people', to: 'film_people#index'
  get 'film_people/:id', to: 'film_people#show'
  delete 'film_people/:id', to: 'film_people#destroy'

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
