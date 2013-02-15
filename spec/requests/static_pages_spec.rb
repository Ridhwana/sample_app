require 'spec_helper'

#RSpec is a domain specific language for testing
#read like English
#whatever is in " " will be irrelevant to Rspec, only for human readability

describe 'Static pages' do 

	describe 'Home pages' do #Describing a home page

		it "should have the content 'Sample App'" do
			visit '/static_pages/home' #visit = Capybara function to simulate visiting the URI
			page.should have_selector('h1', :text => 'Sample App') #when you visit the home page, the content should contain the words Sample App
		end

    	it "should have the title 'Home'" do
      		visit '/static_pages/home'
     	 	page.should have_selector('title',
                        	:text => "Ruby on Rails Tutorial Sample App | Home")
    	end

	 end

	describe 'Help page' do

		it "should have the content 'Help'" do 
			visit '/static_pages/help'
			page.should have_selector('h1', :text => 'Help')
		end

		it "should have the title 'Help'" do
      		visit '/static_pages/help'
     	 	page.should have_selector('title',
                        :text => "Ruby on Rails Tutorial Sample App | Help")
    	end

  	end
	 	

	describe "About page" do
		
		it "should have the content 'About Us'" do
      	visit '/static_pages/about'
      	page.should have_selector('h1', :text => 'About Us')
    	end

    	it "should have the title 'About Us'" do
      	visit '/static_pages/about'
      	page.should have_selector('title',
                    :text => "Ruby on Rails Tutorial Sample App | About Us")
    	end

  	end
	
end
