class RestaurantsController < ApplicationController
  def random
    @restaurant = Restaurant.first(order: 'RANDOM()')
  end
end
