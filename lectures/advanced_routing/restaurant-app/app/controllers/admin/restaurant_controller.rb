class Admin::RestaurantController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end
end
