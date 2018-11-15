Rails.application.routes.draw do
#  get 'sessions/new'

  root 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  #post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  #get '/users/:id/edit', to: 'users#edit'
  #get '/users/:id', to: 'users#show'
  #patch '/users/:id', to: 'users#update'
  resources :users
end
