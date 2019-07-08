
ENV["PLAYLISTER_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

# Type `rake -T` on your command line to see the available rake tasks.

require_relative 'config/environment.rb'
require "sinatra/activerecord/rake"

desc "starts console"
task :console do
  Pry.start
end
