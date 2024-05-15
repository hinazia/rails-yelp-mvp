class ReviewsController < ApplicationController
  def new
    @review = Review.new
    raise
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
