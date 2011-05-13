require 'spec_helper'
module RailsForum
  describe TopicsController do

    context 'request a logged in subject for' do

      it 'add a new topic' do
        lambda { get :new, :category_id => "2" }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

      it 'edit a topic' do
        lambda { get :edit, :id => "1", :category_id => "2" }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

      it 'create a topic' do
        lambda { post :create, :id => "2", :category_id => "2" }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

      it 'update a topic' do
        lambda { put :update, :id => "2", :category_id => "2" }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

      it 'destroy a topic' do
        lambda { delete :destroy, :id => "2", :category_id => "2" }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

    end

  end
end

