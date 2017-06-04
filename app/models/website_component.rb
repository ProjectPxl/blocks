class WebsiteComponent < ApplicationRecord
	belongs_to :website
	belongs_to :component
	belongs_to :parent, :class_name => 'WebsiteComponent'
end
