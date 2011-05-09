module RailsForum
  class Topic < ActiveRecord::Base

    belongs_to :category
    has_many :messages

    validates_presence_of :title, :content, :category


  end
end

