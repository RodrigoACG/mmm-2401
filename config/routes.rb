Rails.application.routes.draw do
  root "welcome#index"

  get "/", to: "welcome#index"

  
  resources :foods, only: [:index]
  
end
