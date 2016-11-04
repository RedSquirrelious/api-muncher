#recipe_result.rb

#NOTE dietlabels, health labels, cautions, ingredientlines, ingredients, totalNutrients, totalDaily show up as arrays (ingredients is an array of hashes)

# require_relative 'recipe_search_wrapper'

class RecipeResult
	attr_reader :uri, :label, :image, :url, :shareas, :ingredientLines, :calories, :totalNutrients, :hit_num, :search_term
	# def initialize(uri, label, image, url)
		def initialize(uri, label, image, url, shareas, ingredientLines, calories, totalNutrients, hit_num, search_term)
		
		if uri == nil || uri == "" || label == nil || label == ""
			raise ArgumentError
		end

		@uri = uri   #aka id
		@label = label
		@image = image
		@url = url
		@shareas = shareas #link to the recipe on edamam website, as opposed to the source website
		@ingredientLines = ingredientLines
		@calories = calories
		@totalNutrients = totalNutrients
		@hit_num = hit_num
		@search_term = search_term
	end


end






	# 	@uri = uri   #aka id
	# 	@label = label
	# 	@image = params["image"]
	# 	# @source = recipe["source"]
	# 	# @sourceicon = recipe["sourceicon"] #
	# 	# @url = recipe["url"] #link to recipe on source website
	# 	@shareas = params["shareas"] #link to the recipe on edamam website, as opposed to the source website
	# 	# @recipe_yield = recipe["recipe_yield"]
	# 	# @dietabels = recipe["dietLabels"]
	# 	# @healthabels = recipe["healthlabels"]
	# 	# @cautions = recipe["cautions"]
	# 	# @ingredientines = recipe["ingredientlines"]
	# 	# @ingredients = recipe["ingredients"]
	# 	# @calories = recipe["calories"]
	# 	# @totalweight = recipe["totalweight"]
	# 	# @totalnutrients = recipe["totalnutrients"]
	# 	# @totaldaily = recipe["totaldaily"]
	# end