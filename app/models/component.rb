class Component < ApplicationRecord
	has_many :website_components
	has_many :websites, :through => :website_components
end
