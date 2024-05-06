class RecipesController < ApplicationController
  include RecipesHelper

  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end
  
  def create
    @recipe = create_recipe_with_ingredients(recipe_params, ingredients_params)
    if @recipe.save
      flash[:notice] = "Recipe created successfully."
      redirect_to recipes_path
    else
      render :new, status: :unprocessable_entity
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
    params.require(:recipe).permit(:name, :meal, :calories, :protein, :fat, :carbs, :instructions)
  end

  def ingredients_params
    params.require(:recipe).dig(:ingredients_attributes, '0', 'name').reject{ |e| e.empty? }
  end
end
