module RailsForum
  class Topic < ActiveRecord::Base

    belongs_to :category

    validates_presence_of :title, :content, :category


  end
end

