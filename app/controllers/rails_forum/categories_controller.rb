module RailsForum
  class CategoriesController < InheritedResources::Base

    before_filter "authenticate_#{RailsForum.devise_model}!", :only => [:new, :edit, :update, :destroy]

  end
end

