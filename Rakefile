require_relative 'config/environment'
require 'sinatra/activerecord/rake'

desc 'starts a console'
task :console do
  ActiveRecord::Base.logger = Logger.new(STDOUT)
  Pry.start
end


desc 'outputs greeting to the terminal'
task :greet do 
  ruby "./bin/run.rb"
end


# namespace :db do
#   desc 'migrate changes to your database'
#   task :migrate => :environment do
#     Customer.create_table
#   end

#   desc 'seed the database with some dummy data'
#   task :seed do 
#     require_relative './db/seeds.rb'
#   end
# end





