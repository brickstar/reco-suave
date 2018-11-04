class RecommendationsController < ApplicationController
  def index
    @presenter = RecommendationsPresenter.new
  end
end
