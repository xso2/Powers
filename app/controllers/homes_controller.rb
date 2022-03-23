class HomesController < ApplicationController
  def index
    @tweet = Tweet.new
    @body_make = BodyMake.new
    @meal_record = MealRecord.new
  end
end
