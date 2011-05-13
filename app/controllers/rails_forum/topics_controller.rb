module RailsForum

  class TopicsController < InheritedResources::Base

    belongs_to :category

  end

end

