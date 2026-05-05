class MealsController < ApplicationController
  def random
    category = params[:category]

    meals = Meal.where("LOWER(category) = ?", category.to_s.downcase)

    sponsored = meals.where(sponsored: true)
    normal = meals.where(sponsored: [false, nil])

    meal =
      if sponsored.exists? && rand < 0.6
        sponsored.order("RANDOM()").first
      else
        normal.order("RANDOM()").first
      end

    meal ||= meals.order("RANDOM()").first

    render json: meal
  end
end