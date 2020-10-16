Rails.application.routes.draw do
  root to: "top#index"
  devise_for :users
  resources :users, only: [:show, :edit, :update] do
    get :favorites, on: :collection
  end
  resources :shops, only: [:index, :show] do
    resource :favorites, only: [:create, :destroy]
    resources :rooms, only: [:index, :new, :create, :show] do
      resources :messages, only: [:index, :create]
    end
  end
end
