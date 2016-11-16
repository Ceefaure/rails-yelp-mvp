class ReviewsController < ApplicationController
  def index
    @reviews = Review.all(params[:restaurant][:id])
  end

  def show
    @review = Review.find(params[:restaurant][:id])
  end

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(content: params[:review][:content], rating: params[:review][:rating])
    @review.restaurant = @restaurant
    @review.save
    redirect_to restaurant_path(@restaurant)
  end
end
