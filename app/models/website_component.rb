class WebsiteComponent < ApplicationRecord
	belongs_to :website
	belongs_to :component
	belongs_to :parent, class_name: "WebsiteComponent"
	has_many 	 :children, class_name: "WebsiteComponent", foreign_key: "parent_id"

	# validates :parent, numericality: { only_integer: true }, allow_nil: true

	scope :get_parents, -> { where( "website_components.parent_id IS NULL" ) }

	def self._order
		merge( WebsiteComponent.order(order: :asc) )
	end

	def self.on_website(id)
		where( "website_id = ?", id )
	end

	def get_children
		obj = {}
		self.children.each {|c| obj[ c.component.name ] = c.get_children}
		obj
	end
end
