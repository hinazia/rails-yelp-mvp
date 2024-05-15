class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params) #restaurant is thee model name here because restaurant is based on model
    @restaurant.save
    redirect_to restaurants_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  private

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :category, :phone_number, :id)
end

end
