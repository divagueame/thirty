Rails.application.routes.draw do
  resources :days
  root "days#index"
end
