class Article < ApplicationRecord
	belongs_to :category

	validates_presence_of :title
	validates_presence_of :category

	scope :active, 			 -> { where('active = ?', true) }
  	scope :alphabetical, -> { order('title') }
end
