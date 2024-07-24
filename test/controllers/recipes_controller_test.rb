require "test_helper"

class RecipesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  
  test "should get index" do
    get recipes_url
    assert_response :success
  end

  test "should show recipe" do
    recipe = recipes(:one)
    get recipe_url(recipe)
    assert_response :success
  end

  test "should create recipe" do
    assert_difference("Recipe.count") do
      post recipes_url, params: { recipe: { name: "Beans", calories: 400 } }
    end
    assert_redirected_to recipes_path
  end

  # test "should update recipe" do
  #   recipe = recipes(:one)

  #   patch recipes_url(recipe), params: { recipe: { calories: 700 } }
  #   assert_redirected_to recipe_path(recipe)

  #   recipe.reload
  #   assert_equal 700, recipe.calories
  # end
end
