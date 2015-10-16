Rails.application.routes.draw do
  root :to => 'posts#index'

  resources :posts do
    resources :tags, :only => [:show]
  end

  resources :tags do
    resources :posts, :only => [:show]
  end
end
