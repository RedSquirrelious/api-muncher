#recipe_search_wrapper.rb
require 'httparty'
require 'recipe_result'

class RecipeSearchWrapper
	attr_reader :label, :uri, :image, :shareas



#CONSTANTS
#hide that information away!
	APP_ID = ENV["APP_ID"]
	APP_KEY = ENV["APP_KEY"]

	BASE_URL = "https://api.edamam.com/search?"

# /CONSTANTS




#CREATE A WRAPPER 
	def initialize(uri, label, params = {})
		@uri = uri   #aka id
		@label = label
		@image = params["image"]
		@shareas = params["shareas"] #link to the recipe on edamam website, as opposed to the source website
	end



#helps users find recipes by an ingredient
	def self.search_by_one_keyword(keyword, my_app_id = nil, my_app_key = nil)
		my_app_id ||= APP_ID
		my_app_key ||= APP_KEY

		url = BASE_URL + "q=#{keyword}" + "&app_id=#{my_app_id}" + "&app_key=#{my_app_key}" 

#THIS IS WHERE THE MAGIC HAPPENS
		data = HTTParty.get(url)

		recipes = []


		if data["hits"]
			my_recipes = data["hits"]
			my_recipes.each do |recipe|
				wrapper = RecipeResult.new(recipe["uri"], recipe["label"], image: recipe["image"], shareas: recipe["shareas"])
				recipes << wrapper
			end
			
			return recipes
		
		else

			return nil
		
		end
	end

end





