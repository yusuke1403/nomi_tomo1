Rails.application.routes.draw do
  root to: "top#index"
  devise_for :users
  resources :shops, only: [:index, :show] do
    resources :rooms, only: [:index, :new, :create] do
      resources :messages, only: [:index, :create]
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
