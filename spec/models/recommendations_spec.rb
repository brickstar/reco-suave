require 'rails_helper'

describe Recommendation do
  context ".new(attrs)" do
    it "exists with valid attributes" do
      valid_attrs = {
        :Name=>"Beatles",
        :Type=>"music",
        :wTeaser=>"lots of text",
        :wUrl=>"www.wikiexample.com",
        :yUrl=>"www.youtubeexample.com",
        :yID=>"123456"
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
