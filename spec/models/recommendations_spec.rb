require 'rails_helper'

describe Recommendation do
  context ".new(attrs)" do
    it "exists with valid attributes" do
      valid_attrs = {
        :name=>"Beatles",
        :type=>"music",
        :wiki_teaser=>"lots of text",
        :wiki_url=>"www.wikiexample.com",
        :youtube_url=>"www.youtubeexample.com",
        :youtube_id=>"123456"
      }

      recommendation = Recommendation.new(valid_attrs)

      expect(recommendation).to be_a Recommendation
      expect(recommendation.name).to eq("Beatles")
      expect(recommendation.type).to eq("music")
      expect(recommendation.wiki_teaser).to eq("lots of text")
      expect(recommendation.wiki_url).to eq("www.wikiexample.com")
      expect(recommendation.youtube_url).to eq("www.youtubeexample.com")
      expect(recommendation.youtube_id).to eq("123456")
    end
  end
end
