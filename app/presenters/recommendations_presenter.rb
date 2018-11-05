class RecommendationsPresenter
  def initialize(params)
    @params = params
    @service = TasteDiveService.new(params)
  end

  def recommendations
    recos = @service.raw_recommendations(@params)[:Similar][:Results].map do |reco|
      Recommendation.new(reco)
    end
  end
end
