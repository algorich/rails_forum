module RailsForum
  class Category < ActiveRecord::Base

    validates_presence_of :name, :description

  end
end

