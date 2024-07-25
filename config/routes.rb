Rails.application.routes.draw do
  # Login routes
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Signup route
  get 'signup', to: 'users#new'

  # User resources
  resources :users, only: [:new, :create, :show]

  # Blog posts
  get "/blog_posts/:id", to: "blog_posts#show"

  # Root path
  root "blog_posts#index"
end
