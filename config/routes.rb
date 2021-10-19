Rails.application.routes.draw do
  root to: 'idioms#index'
  resources :idioms
end
