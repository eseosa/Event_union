require 'spec_helper'

describe "Pages" do
  describe "Home page" do
    it "should have the h1 'Event union'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/pages/home'
      page.should have_selector('h1', :text =>'Event union')
    end
    it "should have the base title" do
      visit '/pages/home'
      page.should have_selector('title',
                        :text => "EventsUnion")
    end
    it "should not have a custom page title" do
      visit '/pages/home'
      page.should_not have_selector('title', :text => '| Home')
    end

  end
  
  describe "Aboutus page" do
    it "should have the h1 'About us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/pages/aboutus'
      page.should have_selector('h1', :text => 'About us')
    end
    it "should have the base title" do
      visit '/pages/aboutus'
      page.should have_selector('title',
                        :text => "EventsUnion")
    end
    it "should not have a custom page title" do
      visit '/pages/aboutus'
      page.should_not have_selector('title', :text => '| About us')
    end
  end
  
  describe "Help page" do
    it "should have the h1 'Support Center'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/pages/help'
      page.should have_selector('h1', text => 'Support Center')
    end
    it "should have the base title" do
      visit '/pages/help'
      page.should have_selector('title',
                        :text => "EventsUnion")
    end
    it "should not have a custom page title" do
      visit '/pages/help'
      page.should_not have_selector('title', :text => '| Help')
    end
  end
  
  describe "Contact page" do
    it "should have the h1 'Contact Us'" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      visit '/pages/contact'
      page.should have_selector('h1', text => 'Contact Us')
    end
    it "should have the base title" do
      visit '/pages/contact'
      page.should have_selector('title',
                        :text => "EventsUnion")
    end
    it "should not have a custom page title" do
      visit '/pages/contact'
      page.should_not have_selector('title', :text => '| Contact')
    end
  end
  
end
