require 'spec_helper'

feature "add a new category" do

  before(:each) do
    @user ||= Factory.create :user
    log_in(@user.email, "123456")
  end


  scenario "success" do
    visit "/forum/categories/new"

    fill_in("Name", :with => "Video game")
    fill_in("Description", :with => "This category is all about video games.")
    click_button("Save")
    page.should have_content("Category was successfully created.")
  end

  scenario "failure" do

    [{:name => "Video game", :description => ""},
     {:name => "", :description => "This category is all about video games."}].each do |opt|

      visit "/forum/categories/new"
      fill_in("Name", :with => opt[:name])
      fill_in("Description", :with => opt[:description])
      click_button("Save")
      page.should have_content("#{opt.key('').capitalize} can't be blank")

    end

  end

end

