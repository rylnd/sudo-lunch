class RestaurantsController < ApplicationController
  def random
    @restaurant = Restaurant.first(order: 'RANDOM()') ||
      Restaurant.new(name: 'the kitchen')
  end
end
