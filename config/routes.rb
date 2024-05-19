Rails.application.routes.draw do
  devise_for :users, controllers: {
            registrations: "users/registrations",
          }
  root "questions#index"
  resources :questions, only: [:index]
  resources :answers, only: [:create]
  post "submit_answers", to: "answers#submit", as: "submit_answers"
  get "results", to: "results#index", as: "results"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
