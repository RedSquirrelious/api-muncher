class RecipeSearchesController < ApplicationController
  def index
  	
  end

  def show
  end

  def self.search(keyword, my_app_id = nil, my_app_key = nil, list_start = 0, list_end = 10)
  	@search = RecipeSearchWrapper.search_by_one_keyword(keyword, my_app_id = nil, my_app_key = nil)
  	redirect_to root_path and return @search
  end

  def new
  	@search = RecipeSearchWrapper.new
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
