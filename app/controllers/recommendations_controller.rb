class RecommendationsController < ApplicationController
  def index
    @recommendations = RecommendationsPresenter.new(params[:q]).recommendations
    binding.pry
  end
end
