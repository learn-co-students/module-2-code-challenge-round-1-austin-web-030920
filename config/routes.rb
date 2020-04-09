Rails.application.routes.draw do
  # resources :powers
  # resources :heroines

  resources :powers, except: [:destroy]
  resources :heroines, except: [:destroy]
end
