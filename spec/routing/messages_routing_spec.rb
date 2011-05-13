require 'spec_helper'
module RailsForum
  describe CategoriesController do

    it 'should route to #index action' do
      { :get => "/forum/categories/1/topics/5/messages" }.should route_to(:controller => "rails_forum/messages", :action => "index", :category_id => "1", :topic_id => "5")
    end

    it 'should route to #new action' do
      { :get => "/forum/categories/1/topics/5/messages/new" }.should route_to(:controller => "rails_forum/messages", :action => "new", :category_id => "1", :topic_id => "5")
    end

    it 'should route to #create action' do
      { :post => "/forum/categories/1/topics/5/messages" }.should route_to(:controller => "rails_forum/messages", :action => "create", :category_id => "1", :topic_id => "5")
    end

    it 'should route to #edit action' do
      { :get => "/forum/categories/1/topics/5/messages/2/edit" }.should route_to(:controller => "rails_forum/messages", :action => "edit", :category_id => "1", :topic_id => "5", :id => "2")
    end

    it 'should route to #update action' do
      { :put => "/forum/categories/1/topics/5/messages/2" }.should route_to(:controller => "rails_forum/messages", :action => "update", :category_id => "1", :topic_id => "5", :id => "2")
    end

    it 'should route to #destroy action' do
      { :delete => "/forum/categories/1/topics/5/messages/2" }.should route_to(:controller => "rails_forum/messages", :action => "destroy", :id => "5", :category_id => "1", :topic_id => "5", :id => "2")
    end

  end
end

