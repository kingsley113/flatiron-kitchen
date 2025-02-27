class IngredientsController < ApplicationController

		def index
			@ingredients = Ingredient.all
		end

		def show
			set_ingredient
		end

		def new
			@ingredient = Ingredient.new
		end

		def create
			@ingredient = Ingredient.new(ingredient_params)

			if @ingredient.save
				redirect_to ingredient_path(@ingredient)
			else
				render 'new'
			end
		end

		def edit
			set_ingredient
		end

		def update
			# binding.pry
			set_ingredient

			if @ingredient.update(ingredient_params)
				redirect_to ingredient_path
			else
				render 'edit'
			end
		end

		def ingredient_params
			params.require(:ingredient).permit(:name)
		end

		def set_ingredient
			@ingredient = Ingredient.find(params[:id])
		end
end