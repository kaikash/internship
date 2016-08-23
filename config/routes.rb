Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "users/registrations" }
  root to: "posts#index"

  resources :posts do
    resources :comments, only: [:create, :destroy]
  end

  resources :users, only: [:show], param: :username do
    resources :posts, only: [:index], controller: "users/posts"
  end
end
