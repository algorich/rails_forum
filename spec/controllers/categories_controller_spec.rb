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

      it 'update a category' do
        lambda { post :update, :id => "2" }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

      it 'destroy a category' do
        lambda { post :destroy, :id => "2" }.should raise_error(::NoMethodError, "undefined method `authenticate!' for nil:NilClass")
      end

    end

  end
end

