class Website < ApplicationRecord
	has_many :website_components
	has_many :components, :through => :website_components
end
