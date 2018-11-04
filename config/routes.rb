Rails.application.routes.draw do
  root to: 'welcome#index'
  resources :recommendations, only: [:index]
end
