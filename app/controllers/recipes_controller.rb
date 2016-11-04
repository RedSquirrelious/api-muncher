
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
  	@result = RecipeSearchWrapper.show_just_one_recipe(params[:id])

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

