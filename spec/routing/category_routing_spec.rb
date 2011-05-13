require 'spec_helper'
module RailsForum
  describe CategoriesController do

    it 'should route to #index action' do
      { :get => "/forum/categories" }.should route_to(:controller => "rails_forum/categories", :action => "index")
    end

    it 'should route to #new action' do
      { :get => "/forum/categories/new" }.should route_to(:controller => "rails_forum/categories", :action => "new")
    end

    it 'should route to #create action' do
      { :post => "/forum/categories" }.should route_to(:controller => "rails_forum/categories", :action => "create")
    end

    it 'should route to #edit action' do
      { :get => "/forum/categories/5/edit" }.should route_to(:controller => "rails_forum/categories", :action => "edit", :id => "5")
    end

    it 'should route to #update action' do
      { :put => "/forum/categories/1" }.should route_to(:controller => "rails_forum/categories", :action => "update", :id => "1")
    end

    it 'should route to #destroy action' do
      { :delete => "/forum/categories/1" }.should route_to(:controller => "rails_forum/categories", :action => "destroy", :id => "1")
    end

  end
end

