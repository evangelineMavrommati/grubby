class RecipesController < ApplicationController
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
    @recipe = Recipe.new(recipe_params)
    @recipe.add_ingredients(ingredients_params)

    if @recipe.save
      flash[:notice] = "Recipe created successfully."
      redirect_to recipes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update_ingredients(ingredients_params)

    if @recipe.save
      flash[:notice] = "Recipe updated successfully."
      redirect_to recipe_path(@recipe.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :meal, :calories, :protein, :fat, :carbs, :instructions)
  end

  def ingredients_params
    params.require(:recipe).dig(:ingredients_attributes, '0', 'name')&.reject{ |e| e.empty? }
  end
end
