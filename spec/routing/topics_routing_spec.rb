require 'spec_helper'
module RailsForum
  describe CategoriesController do

    it 'should route to #index action' do
      { :get => "/forum/categories/1/topics" }.should route_to(:controller => "rails_forum/topics", :action => "index", :category_id => "1")
    end

    it 'should route to #new action' do
      { :get => "/forum/categories/1/topics/new" }.should route_to(:controller => "rails_forum/topics", :action => "new", :category_id => "1")
    end

    it 'should route to #create action' do
      { :post => "/forum/categories/1/topics" }.should route_to(:controller => "rails_forum/topics", :action => "create", :category_id => "1")
    end

    it 'should route to #edit action' do
      { :get => "/forum/categories/1/topics/5/edit" }.should route_to(:controller => "rails_forum/topics", :action => "edit", :id => "5", :category_id => "1")
    end

    it 'should route to #update action' do
      { :put => "/forum/categories/1/topics/5" }.should route_to(:controller => "rails_forum/topics", :action => "update", :id => "5", :category_id => "1")
    end

    it 'should route to #destroy action' do
      { :delete => "/forum/categories/1/topics/5" }.should route_to(:controller => "rails_forum/topics", :action => "destroy", :id => "5", :category_id => "1")
    end

  end
end

