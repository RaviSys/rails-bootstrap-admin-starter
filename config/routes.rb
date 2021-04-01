Rails.application.routes.draw do
  root 'home#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }

  namespace :admin do
    get 'dashboard' => 'dashboards#index'
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
