Saas::Application.routes.draw do
  #devise_for :subscriptions

  root to: 'plans#index'
  resources :subscriptions
  resources :plans
end
