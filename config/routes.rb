Rails.application.routes.draw do
  get 'home/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/show'
  # Login routes
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Signup route
  get 'signup', to: 'users#new'

  # User resources
  resources :users, only: [:new, :create, :show]
  resources :posts, only: [:new, :create, :show, :edit, :update]

  # Blog posts
  get "/blog_posts/:id", to: "blog_posts#show"

  # Root path
  root 'home#index'
end
