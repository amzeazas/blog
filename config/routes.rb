Rails.application.routes.draw do
  devise_for :users
  root :to => 'posts#index'

  resources :posts do
    resources :tags, :only => [:show]
    resources :comments, :except => [:index, :show]
  end

  resources :tags do
    resources :posts, :only => [:show]
  end
end
