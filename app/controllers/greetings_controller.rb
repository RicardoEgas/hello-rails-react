# app/controllers/greetings_controller.rb
class GreetingsController < ApplicationController
    def random_greeting
      greetings = ['Hello!', 'Hi!', 'Greetings!', 'Hola!', 'Bonjour!']
      render json: { message: greetings.sample }
    end
  end
  
