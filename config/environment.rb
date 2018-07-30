require 'bundler/setup'
require "sinatra/activerecord"
Bundler.require


Dir[File.join(File.dirname(__FILE__), "../lib/support", "*.rb")].each {|f| require f}

DBRegistry[ENV["PLAYLISTER_ENV"]].connect!
DB = ActiveRecord::Base.connection

if ENV["PLAYLISTER_ENV"] == "test"
  ActiveRecord::Migration.verbose = false
end

connection_details = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(connection_details)
