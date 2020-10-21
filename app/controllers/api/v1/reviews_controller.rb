class Api::V1::ReviewsController < ApplicationController
  def show
    # binding.pry
    render json: Review.find(params[:id])
  end
end
