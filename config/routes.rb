Rails.application.routes.draw do

  scope "forum", :module => "rails_forum", :as => "rails_forum" do
    resources :categories do
      resources :topics
    end
  end

end

