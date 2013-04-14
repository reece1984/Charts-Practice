Composer::Application.routes.draw do
mount WillFilter::Engine => "/will_filter"
  resources :expenses


  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end