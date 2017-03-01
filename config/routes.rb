Rails.application.routes.draw do
  root to: "posts#index"

  #Users
  match '/users',     to: 'users#index',   via: 'get'
  match '/users/:id', to: 'users#show',    via: 'get'

  resources :users, :only =>[:show, :edit, :update]

  devise_for :users, controllers: {
          sessions: 'users/sessions'
        }, :path_prefix => 'd'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :posts do
    resources :comments
  end

  resources :communities do
    resources :stories do
      resources :storycomments
    end
    member do
      post 'add_membership'
      delete 'remove_membership'
    end
  end

  resources :feedbacks, only: [:index, :new, :create]

end
