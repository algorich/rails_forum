require 'spec_helper'
module RailsForum
  describe CategoriesController do

    it 'should route to #index action' do
      { :get => "/forum/categories" }.should route_to(:controller => "rails_forum/categories", :action => "index")
    end

  end
end

