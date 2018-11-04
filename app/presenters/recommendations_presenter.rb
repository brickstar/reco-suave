class RecommendationsPresenter
  def initialize(params)
    @params = params
    @service = TasteDiveService.new(params)
  end

  def recommendations
    @service.raw_recommendations(@params)[:Similar][:Results].map do |reco|
      Recommendation.new(name = reco[:Name], type = reco[:Type], wiki_teaser = reco[:wTeaser], wiki_url = reco[:wUrl], youtube_url = reco[:yUrl], youtube_clip_id = reco[:yID])
    end
  end
end
