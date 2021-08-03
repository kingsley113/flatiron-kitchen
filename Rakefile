# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

FlatironKitchen::Application.load_tasks


namespace :db do
	desc 'Drop, create, migrate then seed the development database'
	task reseed: [ 'db:drop', 'db:create', 'db:migrate', 'db:seed' ] do
		puts 'Reseeding completed.'
	end
end