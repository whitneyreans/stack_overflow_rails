Rails.application.routes.draw do

root :to => 'users#index'
resources :user do
  resources :question
end

resources :answer
end
