module RailsForum
  class Category < ActiveRecord::Base

    has_many :topics

    validates_presence_of :name, :description

  end
end

