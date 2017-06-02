require 'sinatra'
require 'httparty'
require 'pry'

set :bind, '0.0.0.0'  # bind to all interfaces

post '/meetups' do
  params["text"].slice!(/(meetups in(.))/i).downcase == 'meetups in'
  text = params["text"]
  if text.length > 0
    city = text.split(",")[0]
    state = text.split(",")[1]
  end
  binding.pry
end
