class Article < ActiveRecord::Base
	belongs_to :category

	validate_presence_of :title, :content

	scope :alphabetical, order('name')
	scope :active, where('active = ?', true)
	
end
