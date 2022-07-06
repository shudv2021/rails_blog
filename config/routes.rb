Rails.application.routes.draw do
  get 'home/index'
  
  get 'home/contacts'
  
  post 'home/get_message'
  
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
