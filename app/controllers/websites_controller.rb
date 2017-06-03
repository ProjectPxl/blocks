class WebsitesController < ApplicationController
	layout 'website', only: [:index]

	def index
		@website = Website.first
		@title 	 = @website.name
		@source  = @website.components.first.html.html_safe
	end

	def show
		@name = Website.find(params[:id]).name
		@all_components = Component.all
	end
end
