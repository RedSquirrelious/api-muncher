#recipesearchwrapper.rb
require 'httparty'
require 'recipesearch'

class RecipeSearchWrapper

#hide that information away!
	APP_ID = ENV[APP_ID]
	APP_KEY = ENV[APP_KEY]

#this is where it all starts
	BASE_URL = "https://api.edamam.com/"

#because who wants to type all that?  
	AUTH = "&app_id=APP_ID&app_key=APP_KEY"


#helps users find recipes by an ingredient
	self.search_recipes_by_one_keyword(keyword)
		url = BASE_URL + "search?q=#{keyword}" + AUTH

		response = HTTParty.get(url)

		my_recipes = []

		response["recipes"] 

		response["recipes"].each do |recipe|
			id = recipe["id"]
			name = recipe["name"]

			my_recipes << RecipeSearch.new(name, id)
		end

		return my_recipes
	end

end