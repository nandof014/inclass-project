Rails.application.routes.draw do
  root 'animals#index'
  resources :date_infecteds
  resources :diseases
  resources :animals
  resources :owners
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
