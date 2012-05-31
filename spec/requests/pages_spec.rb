require 'spec_helper'

describe "Pages" do
  describe "Home page" do
    it "should have the content 'Event union'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/pages/home'
      page.should have_content('Event union')
    end
    it "should have the title 'Home'" do
      visit '/pages/home'
      page.should have_selector('title',
                        :text => "EventsUnion | Home")
    end
  end
  
  describe "Aboutus page" do
    it "should have the content 'About us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/pages/aboutus'
      page.should have_content('About us')
    end
    it "should have the title 'About us'" do
      visit '/pages/aboutus'
      page.should have_selector('title',
                        :text => "EventsUnion | About us")
    end
  end
  
  describe "Help page" do
    it "should have the content 'Support Center'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/pages/help'
      page.should have_content('Support Center')
    end
    it "should have the title 'Help'" do
      visit '/pages/help'
      page.should have_selector('title',
                        :text => "EventsUnion | Help")
    end
  end
end
