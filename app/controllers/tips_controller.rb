class TipsController < ApplicationController
  def random
    tip = Tip.order("RANDOM()").first

    if tip
      render json: tip
    else
      render json: { error: "No tips found" }, status: 404
    end
  end
end 