require 'rails_helper'

describe Product do
	before do
  		@product = Product.create!(name: "race toy", price: "2", colour:"yellow", image_url: "aaa", description: "lol")
  		@user = User.create!(first_name: "Boda Miguel", email: "1@2.com", password: "abcdef")
  		@product.comments.create!(rating: 1, user: @user, body: "Awful toy!")
	end

	it "returns the average rating of all comments" do

	end

	it "is not valid" do
		expect(Product.new(description: "Nice bike")).not_to be_valid
	end

end