require 'rails_helper'

describe TasteDiveService do
  describe 'instance methods' do
    describe '#recommendations' do
      it 'returns recommendations related to user query' do
        VCR.use_casette('taste_dive_service_recommendations') do
          tds = TasteDiveService.new
          search_params = "Black Angels"

          recommendations = tds.recommendations(search_params)
          original_query_param = recommendations[:Similar].first
          recommendation = recommendations[:Results].first

          expect(recommendations).to have_key(:Similar)
          expect(recommendations).to have_key(:Results)
          expect(original_query_param).to have_key(:Name)
          expect(original_query_param).to have_key(:Type)
          expect(original_query_param).to have_key(:wTeaser)
          expect(original_query_param).to have_key(:wUrl)
          expect(original_query_param).to have_key(:yUrl)
          expect(original_query_param).to have_key(:yID)
          expect(recommendations).to have_key(:Results)
          expect(recommendation).to have_key(:Name)
          expect(recommendation).to have_key(:Type)
          expect(recommendation).to have_key(:wTeaser)
          expect(recommendation).to have_key(:wUrl)
          expect(recommendation).to have_key(:yUrl)
          expect(recommendation).to have_key(:yID)
        end
      end
    end
  end
end
