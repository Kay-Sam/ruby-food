class MealsController < ApplicationController

  def random
    category = params[:category]
    meal = Meal.where(category: category).order("RANDOM()").first

    render json: meal
  end

end