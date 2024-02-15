Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  # Defines the root path route ("/")
  root "members#show"

  resources :members, only: [:show]

  resources :meetings, shallow: true do
    resources :check_ins, namespace: :meetings, module: :meetings
  end

  # Administrate

  namespace :admin do
    resources :meetings
    resources :members

    root to: "members#index"
  end
end
