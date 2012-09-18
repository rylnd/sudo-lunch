class RestaurantsController < ApplicationController
  respond_to :html, :json
  before_filter :find_random_restaurant, only: :random

  def random
    respond_with @restaurant
  end

  def index
    @restaurants = Restaurant.all
    respond_with @restaurants
  end

  private

  def find_random_restaurant
    relation = params[:tag] ? Restaurant.tagged_with(params[:tag]) : Restaurant

    @restaurant = relation.first(order: 'RANDOM()') || Restaurant.new(name: 'the kitchen')
  end
end
