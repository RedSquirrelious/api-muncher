#recipe_search_wrapper.rb

require 'dotenv'
Dotenv.load!
require 'httparty'
require_relative 'recipe_result'
require_relative 'sample-recipe-result'

class RecipeSearchWrapper
	attr_reader :uri, :label, :image, :shareas



#CONSTANTS
#hide that information away!
	APP_ID = ENV["APP_ID"]
	APP_KEY = ENV["APP_KEY"]

	BASE_URL = "https://api.edamam.com/search?"

# /CONSTANTS




#CREATE A WRAPPER 
	def initialize(uri, label, image, shareas)
		@uri = uri   #aka id
		@label = label
		@image = image
		@shareas = shareas #link to the recipe on edamam website, as opposed to the source website
	end



#helps users find recipes by an ingredient
	def self.search_by_one_keyword(keyword, my_app_id = nil, my_app_key = nil)
		my_app_id ||= APP_ID
		my_app_key ||= APP_KEY

		url = BASE_URL + "q=#{keyword}" + "&app_id=#{my_app_id}" + "&app_key=#{my_app_key}" 

#THIS IS WHERE THE MAGIC HAPPENS, MY JSON HASH
		data = HTTParty.get(url)

		recipes = []


		if data["hits"]
			
			results_array = data["hits"]
			
			results_array.each do |result|
				wrapper = RecipeResult.new(result["recipe"]["uri"], result["recipe"]["label"], result["recipe"]["image"], result["recipe"]["shareas"])
				recipes << wrapper
			end
			
			return recipes
		
		else

			return nil
		
		end
	end

# end


	def self.search_sample
		

		recipe_results_hash = Sample::SAMPLE_RECIPE

		results_array = recipe_results_hash[:hits]


		if results_array
			recipes = []

			results_array.each do |result|
				uri = result[:recipe][:uri]
				label = result[:recipe][:label]


				wrapper = RecipeResult.new(uri, label)
				# x = uri
				# y = label
				# x = uri.class
				# y = label.class
				recipes << wrapper
				# recipes << x
				# recipes << y
			end
			
			return recipes
		
		else

			return nil
		
		end
	end
end

# test = RecipeSearchWrapper.search_sample

test = RecipeSearchWrapper.search_by_one_keyword("carrots")

puts test
puts test.class

test.each do |recipe|
	puts recipe.uri
	puts recipe.label
end


