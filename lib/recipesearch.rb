#recipesearch.rb

require 'recipesearchwrapper'

class RecipeSearch
	attr_reader :name, :id

	def initialize(name, id)
		@name = name
		@id = id
	end


end
