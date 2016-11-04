
class RecipesController < ApplicationController


  def search

  	@keyword = params[:query]
  	@from = params[:from]
  	@to = "#{params[:from].to_i + 10}"
  	@results = RecipeSearchWrapper.search_by_one_keyword(@keyword, @from, @to)
  	render :index

  end

  def index

  end

  def flip_page

  end

  def show
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

