require 'sinatra/base'
require "bundler/setup"

class Suffragist < Sinatra::Application
  Dir[File.join(File.dirname(__FILE__), "routes", "*.rb")].each { |lib| require lib }
end

server_options = {
  :Port => "8080",
  :BindAddress => "0.0.0.0",
}
Rack::Handler::WEBrick.run Suffragist, server_options