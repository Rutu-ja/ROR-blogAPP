Rails.application.routes.draw do
  get 'users/new'
  # these are login routes
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup', to: 'users#new' 

  get "/blog_posts/:id", to:"blog_posts#show"
  resources :users, only: [:new, :create,]  
  
  # Defines the root path route ("/")
  root "blog_posts#index"
end
