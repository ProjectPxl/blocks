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
		@website_components = Component.joins(:website_components).where( "website_components.website_id = ?", params[:id] )
			.merge( WebsiteComponent.order(order: :asc) )
	end
end
