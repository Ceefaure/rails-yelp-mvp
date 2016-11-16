class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @new_restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(name: params[:restaurant][:name], address: params[:restaurant][:address], phone_number: params[:restaurant][:phone_number], category: params[:restaurant][:category])
    @restaurant.save
    redirect_to restaurants_path(@restaurant)
  end

  def edit
  end

  def update
  end
end
