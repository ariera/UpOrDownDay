UpOrDownDay::Application.routes.draw do
  get "user/show"
  get "user/update"
  devise_for :users
  
  root :to => 'home#index'
end
