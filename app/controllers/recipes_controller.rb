
class RecipesController < ApplicationController


  def search
  	@results = RecipeSearchWrapper.search_by_one_keyword(params[:query])
  	# binding.pry
  	return render :index
  end
  	  # def self.search(keyword, my_app_id = nil, my_app_key = nil, list_start = 0, list_end = 10)
  # 	@search = RecipeSearchWrapper.search_by_one_keyword(keyword, my_app_id = nil, my_app_key = nil)
  # 	redirect_to root_path and return @search
  # end

  #    @products = Product.search(params[:query])
#    # if product query matches a product(s)
#    # render those image(s), if any match.
#    render :index
  # end

  def index

  end

  def flip_page

  end

  def show
  	#paginate with @hit in the list_start local?
  	@result = RecipeSearchWrapper.search_by_one_keyword(params["search_term"], params["hit_num"].to_i, params["hit_num"].to_i)
  	@uri = params["uri"]   #aka id
		@label = params["label"]
		@image = params["image"]
		@url = params["url"]
		@shareas = params["shareas"] #link to the recipe on edamam website, as opposed to the source website
		@ingredientsLines = params["ingredientsLines"]
		@calories = params["calories"]
		@totalNutrients = params["totalNutrients"]
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
