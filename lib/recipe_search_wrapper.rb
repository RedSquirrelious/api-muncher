#recipe_search_wrapper.rb
require 'httparty'
require 'recipe_result'

class RecipeSearchWrapper

#CONSTANTS
#hide that information away!
	APP_ID = ENV["APP_ID"]
	APP_KEY = ENV["APP_KEY"]

#this is where it all starts
	BASE_URL = "https://api.edamam.com/"

#because who wants to type all that?  
	AUTH = "&app_id=APP_ID&app_key=APP_KEY"
# /CONSTANTS


#CREATE A WRAPPER 
	def initialize(uri, label, params = {})
		@uri = uri   #aka id
		@label = label
		@image = params["image"]
		@shareas = params["shareas"] #link to the recipe on edamam website, as opposed to the source website
	end


#helps users find recipes by an ingredient
	def self.search_by_one_keyword(keyword, app_id = nil, app_key = nil)
		app_id ||= APP_ID
		app_key ||= APP_KEY

		url = BASE_URL + "search?q=#{keyword}" + AUTH

#THIS IS WHERE THE MAGIC HAPPENS
		data = HTTParty.get(url)

		my_recipes = []

		data["recipes"] 

		if data["recipes"]
			data["recipes"].each do |recipe|
				wrapper = RecipeResult.new(recipe["uri"], recipe["label"], image: recipe["image"], shareas: recipe["shareas"])
				my_recipes << wrapper
			end
			
			return my_recipes
		
		else

			return nil
		
		end
	end

end