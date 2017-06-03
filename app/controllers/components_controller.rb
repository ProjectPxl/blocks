class ComponentsController < ApplicationController
	def new
		@component = Component.new
	end

	def create
		@component = Component.new(component_params)
		  if @component.save
		    redirect_to :back
		  else
		    render 'new'
		  end
	end

	# def edit
	#   @film = Film.find(params[:id])
	# end

	# def update
	#   @film = Film.find(params[:id])
	#   if @film.update(film_params)
	#     redirect_to @film
	#   else
	#     render 'edit'
	#   end
	# end

	# def destroy
	# 	@film = Film.find(params[:id])
	#   @film.destroy
	#   redirect_to root_path
	# end

	def component_params
		params.require(:component).permit(:name, :html, :css, :js);
	end
end
