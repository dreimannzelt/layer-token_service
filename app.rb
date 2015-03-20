#!/usr/bin/env ruby
require 'bundler'
Bundler.require

require "sinatra/json"

class TokenService < Sinatra::Base
  helpers Sinatra::JSON
  
  post '/hello/layer' do
    response = {
      token: Layer::IdentityToken.new(params[:user_id], params[:nonce])
    }

    json response
  end
end
 
if __FILE__ == $0
  TokenService.run!
end
