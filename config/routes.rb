Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  # for the pages controller
  root'pages#home'        # this is the home action which is now also the homepage
  get 'about', to: 'pages#about'      # this is the about action

  resources :articles #this gave us a path for a new, edit, show, update, index, create and all of that

  get 'signup', to: 'users#new'
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]

end
