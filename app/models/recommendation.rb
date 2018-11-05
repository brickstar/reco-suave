class Recommendation
  attr_reader :name, :type, :wiki_teaser, :wiki_url, :youtube_url, :youtube_id
  def initialize(attrs = {})
    @name = attrs[:Name]
    @type = attrs[:Type]
    @wiki_teaser = attrs[:wTeaser]
    @wiki_url = attrs[:wUrl]
    @youtube_url = attrs[:yUrl]
    @youtube_id = attrs[:yId]
  end
end
