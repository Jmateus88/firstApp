require 'rails_helper'

describe Product do
	before do
  		@product = Product.create!(name: "race toy", price: "2", colour:"yellow", image_url: "aaa", description: "lol")
  		@user = User.create!(first_name: "Boda Miguel", email: "1@2.com", password: "abcdef")
  		@product.comments.create!(rating: 1, user: @user, body: "Awful toy!")
  		@product.comments.create!(rating: 2, user: @user, body: "this toy needs improvement!")
  		@product.comments.create!(rating: 3, user: @user, body: "ok!")
  		@product.comments.create!(rating: 4, user: @user, body: "good product!")
  		@product.comments.create!(rating: 5, user: @user, body: "fantastic toy!")
	end

	it "returns the average rating of all comments" do
		expect(@product.average_rating).to eq 3
	end

	it "is not valid" do
		expect(Product.new(description: "Nice bike")).not_to be_valid
	end

end