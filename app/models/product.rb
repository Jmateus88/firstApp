class Product < ApplicationRecord
	has_many :orders
	has_many :comments

	def highest_rating_comment
  		comments.rating_desc.first
	end

	def lowest_rating_comment
  		comments.rating_asc.first
	end

	def average_rating
  		comments.average(:rating).to_f
	end

	def cache_average_rating

	end


	validates :description, presence: true
	validates :name, presence: true
	validates :price, presence: true, :with => /^\d+\.*\d{0,2}$/
	validates :colour, presence: true
	validates :image_url, presence: true

end
