Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  # for the pages controller
  root'pages#home'        # this is the home action which is now also the homepage
  get 'about', to: 'pages#about'      # this is the about aciton

end
