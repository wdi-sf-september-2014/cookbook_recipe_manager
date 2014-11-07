class RecipeController < ApplicationController

	def index
		@recipes = Recipe.all
		render 'index'
	end

	def create
		Recipe.create(
			name: params[:name],
			ingredients: params[:ingredients],
			cooking_time: params[:cooking_time],
			prep_time: params[:prep_time],
			directions: params[:directions]
		)
		redirect_to "/"
	end

	def show
		@recipe = Recipe.find(params[:id])

		render 'edit'
	end

	def update
		recipe = Recipe.find(params[:id])

		if params[:delete_button]
			recipe.destroy
		else
			recipe.update(
				name: params[:name],
				ingredients: params[:ingredients],
				cooking_time: params[:cooking_time],
				prep_time: params[:prep_time],
				directions: params[:directions]
			)
		end
		redirect_to "/"
	end

end
