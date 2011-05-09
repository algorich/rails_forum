require 'bundler'
Bundler::GemHelper.install_tasks


desc "Create the database and migrations for the app_test"
namespace :db do
  task :create do
    system "cd spec/dummy_app; rake db:create:all RAILS_ENV=test; \
     rake db:migrate RAILS_ENV=test; rake db:test:clone RAILS_ENV=test"
  end

  task :drop do
    system "cd spec/dummy_app; rake db:drop:all RAILS_ENV=test"
  end

  task :migrate do
    system "cd spec/dummy_app; rake db:migrate RAILS_ENV=test; \
    rake db:test:clone RAILS_ENV=test"
  end
end

