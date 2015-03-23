Rails.application.routes.draw do

root :to => 'users#index'

resources :users do
  resources :questions
end

resources :answers
end
