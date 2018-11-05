class RecommendationsController < ApplicationController
  def index
    @recommendations = RecommendationsPresenter.new(params[:q]).recommendations
  end
end
