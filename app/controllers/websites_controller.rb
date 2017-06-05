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
		# @website_components = Component.joins(:website_components).on_website( params[:id] ).get_parents._order
		@website_components = WebsiteComponent.joins(:website).where("website_id = ?", 1).get_parents._order

		@obj = {}
		@website_components.each do |wc|
			@obj[wc.component.name] = wc.get_children
		end
	end
end
