class RecipesController < ApplicationController

	def index
		@recipes = Recipe.all
	end

	def show
		set_recipe
	end

	def new
		@recipe = Recipe.new
	end

	def create
		@recipe = Recipe.new(recipe_params)
		if @recipe.save
			redirect_to recipe_path(@recipe)
		else
			render 'new'
		end
	end

	def edit
		set_recipe
	end

	def update
		set_recipe

		if @recipe.update(recipe_params)
			redirect_to recipe_path(@recipe)
		else
			render 'edit'
		end
	end


	def recipe_params
		params.require(:recipe).permit(:name, ingredient_ids: [])
	end

	def set_recipe
		@recipe = Recipe.find(params[:id])
	end

end