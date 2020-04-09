Rails.application.routes.draw do

  resources :powers, except: [:new, :create, :destroy]
  resources :heroines, except: [:edit, :update, :destroy]
end
