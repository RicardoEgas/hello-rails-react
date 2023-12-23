Rails.application.routes.draw do
  get 'static_pages/home'
  namespace :api do
    get 'greetings/random', to: 'greetings#random_greeting'
  end
  root 'static_pages#home'
end
