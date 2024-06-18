Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Health check endpoint
  get "up" => "rails/health#show", as: :rails_health_check

  # Define the root path route ("/")
  # Uncomment and set the root if needed. For now, it's not required.
  # root "posts#index"

  # API routes for the Jobs resource
  resources :jobs, only: [:create, :show, :index]
end

