class WebsitesController < ApplicationController
	layout 'website', only: [:show]

	def show
		@website = Website.first
		@title 	 = @website.name
		@source  = @website.components.first.html.html_safe
	end

	def edit
		@website = Website.find(params[:id])
		@name 	 = @website.name
		@website_components = @website.components
	end
end
