TaskAlloc::Application.routes.draw do
  # root :to => '/tasks'
  devise_for :users

  namespace :api, defaults: {format: :json} do
  	resources :tasks, only: [:index, :create, :update, :destroy]
  	resources :groups, only: [:index, :create, :update, :destroy]
	resources :users, only: [:index, :create, :update, :destroy]

  end
end

