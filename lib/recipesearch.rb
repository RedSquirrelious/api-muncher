#recipesearch.rb

require 'recipesearchwrapper'

class RecipeSearch
	attr_reader :name, :id, :photo_url, :recipe_url

	def initialize(name, id, image, url, ingredients, totalnutrients, totaldaily)
		@name = name
		@id = id
		@image = image
		@url = url
		@ingredients = ingredients[]
		@totalnutrients = totalnutrients
		@totaldaily = totaldaily
	end


end
