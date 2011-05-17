ENV["RAILS_ENV"] = "test"

require "dummy_app/config/environment"

require 'rails/test_help'
require 'rspec/rails'
require 'steak'
require 'capybara/rspec'
require 'factory_girl'
require 'factories'
require 'database_helper'
require 'generator_spec/test_case'
require 'generators/rails_forum/rails_forum_generator'


include DatabaseHelper

puts 'Setting up database...'
drop_all_tables
migrate_database

RSpec.configure do |config|

  config.before(:each) do

    RailsForum::Category.delete_all
    User.delete_all

  end

end


def log_in(email, password)
  visit "/users/sign_in"
  fill_in("Email", :with => email)
  fill_in("Password", :with => password)
  click_button("Sign in")
end

