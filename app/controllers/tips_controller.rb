class TipsController < ApplicationController
  def random
    category = params[:category]

    tip = if category.present?
      Tip.where(category: category).order("RANDOM()").first
    else
      Tip.order("RANDOM()").first
    end

    if tip
      render json: tip
    else
      render json: { error: "No tips found" }, status: 404
    end
  end
end