
ENV["RACK_ENV"] ||= "development"

# require_relative 'models/user'
require 'sinatra/base'
require_relative 'data_mapper_setup'

class Chitter < Sinatra::Base

  get '/sign-up' do
    erb :sign_up
  end

  post "/sign-up" do
    user = User.create(email: params[:email],
                password: params[:password],
                name: params[:name],
                username: params[:username])
    redirect "/sign-up"
  end
end
