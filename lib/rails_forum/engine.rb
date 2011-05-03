require 'rails_forum'
require 'rails'
require 'action_controller'
require 'active_record'
require 'devise'


module RailsForum
  class Engine < Rails::Engine

    engine_name :rails_forum

    config.generators do |g|
      g.orm             :active_record
      g.template_engine :erb
      g.test_framework  :rspec
    end

  end
end

