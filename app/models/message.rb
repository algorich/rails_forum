module RailsForum

  class Message < ActiveRecord::Base

    belongs_to :topic

    validates_presence_of :content, :topic

  end

end

