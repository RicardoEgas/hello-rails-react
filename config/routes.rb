# config/routes.rb
Rails.application.routes.draw do
  root 'static_pages#home'
  get '/api/random_greeting', to: 'greetings#random_greeting'
end
