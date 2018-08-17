Rails.application.routes.draw do
  namespace :v1 do
    resources :tipos
    resources :capsulas
    resources :capsula
    #resources :sessions, only: [:create, :destroy]
  end
end
