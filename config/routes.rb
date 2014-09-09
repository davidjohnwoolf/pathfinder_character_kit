Rails.application.routes.draw do

  root 'site#index'

  resources :characters

  devise_for :users

end
