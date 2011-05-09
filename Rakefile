require 'bundler'
Bundler::GemHelper.install_tasks


desc "Create the database and migrations for the app_test"
namespace :db do
  task :create do
    system "cd spec/dummy_app; rake db:create:all; rake db:migrate; rake db:test:clone"
  end

  task :drop do
    system "cd spec/dummy_app; rake db:drop:all"
  end

  task :migrate do
    system "cd spec/dummy_app; rake db:migrate; rake db:test:clone"
  end
end

