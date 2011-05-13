module RailsForum
  require 'rails_forum/engine' if defined?(Rails) && Rails::VERSION::MAJOR == 3

  @@devise_model = "user"

  mattr_accessor :devise_method

  def self.setup
    yield self
  end

  def self.devise_model(model_name=nil)
    return @@devise_model if model_name.nil?
    @@devise_model = model_name
  end
end

