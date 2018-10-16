class City < ApplicationRecord
	has_one_attached :image

	validates_presence_of :nomecity
	validates_presence_of :image
end
