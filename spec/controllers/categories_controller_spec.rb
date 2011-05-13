require 'spec_helper'
module RailsForum
  describe CategoriesController do

    context 'request a logged in subject for' do

      it 'add a new category' do
        lambda { get :new }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

      it 'edit a category' do
        lambda { get :edit, :id => "1" }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

      it 'create a category' do
        lambda { post :create, :id => "2" }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

      it 'update a category' do
        lambda { put :update, :id => "2" }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

      it 'destroy a category' do
        lambda { delete :destroy, :id => "2" }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

    end

  end
end

