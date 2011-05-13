Rails.application.routes.draw do

  scope "forum", :module => "rails_forum", :as => "rails_forum" do
    resources :categories
    resources :topics, :action => "index"
  end

end

