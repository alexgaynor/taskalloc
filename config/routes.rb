TaskAlloc::Application.routes.draw do
  # root :to => '/tasks'
  devise_for :users

  namespace :api, defaults: {format: :json} do
  	devise_scope :user do
  		resource :session, only: [:create, :destroy]
  	end

  	resources :tasks, only: [:index, :create, :update, :destroy, :show]
  	resources :groups, only: [:index, :create, :update, :destroy, :show] do
  		resources :tasks, only: [:index, :show]
  	end
  end
end

