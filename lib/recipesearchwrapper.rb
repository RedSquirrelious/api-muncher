#recipesearchwrapper.rb
require 'httparty'
require 'recipesearch'

class RecipeSearchWrapper

	TOKEN = ENV[APP_ID]
	SECRET = ENV[APP_KEY]

	BASE_URL = "https://api.edamam.com/search"

end