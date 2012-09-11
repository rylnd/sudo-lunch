class RestaurantsController < ApplicationController
  respond_to :html, :json

  def random
    @restaurant = Restaurant.first order: 'RANDOM()'
    respond_with @restaurant
  end

  def index
    @restaurants = Restaurant.all
    respond_with @restaurants
  end
end
