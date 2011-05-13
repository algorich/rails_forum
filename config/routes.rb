Rails.application.routes.draw do

  scope "forum", :module => "rails_forum", :as => "rails_forum" do

    resources :categories do
      resources :topics do
        resources :messages
      end
    end

  end

end

