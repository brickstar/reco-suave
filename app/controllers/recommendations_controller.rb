class RecommendationsController < ApplicationController

  def index
    @recommendations = RecommendationsPresenter.new(params[:q]).recommendations
  end

  # def create
  #   expire_page :action => :index
  # end
end
