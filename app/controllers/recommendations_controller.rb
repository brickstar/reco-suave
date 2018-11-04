class RecommendationsController < ApplicationController
  def index
    @presenter = RecommendationsPresenter.new(params[:q])
  end
end
