module RailsForum
  class MessagesController < InheritedResources::Base

    belongs_to :topic

  end
end

