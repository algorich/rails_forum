require 'spec_helper'
module RailsForum
  describe CategoriesController do

    it 'should render #index template' do
      get :index
      response.should render_template("index")
    end

  end
end

