module RailsForum

  class TopicsController < InheritedResources::Base

    before_filter "authenticate_#{RailsForum.devise_model}!", :only => [:new, :edit, :create, :update, :destroy]

    belongs_to :category

  end

end

