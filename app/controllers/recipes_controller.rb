class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
  end

  def new
    @recipe = Recipe.new
  end
  
  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      flash[:notice] = "Recipe created successfully."
      redirect_to recipes_path
    else
      flash[:error] = "Recipe could not be created."
      render new_recipe_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def recipe_params
    params[:recipe].permit(:name, :meal, :calories, :protein, :fat, :carbs)
  end
end
