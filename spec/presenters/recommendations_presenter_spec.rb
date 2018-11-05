require 'rails_helper'

describe RecommendationsPresenter do
  describe 'instance methods' do
    describe '#recommendations' do
      it 'returns an array of recommendation objects' do
        search_params = 'Beatles'
        rp = RecommendationsPresenter.new(search_params)
        recommendations = rp.recommendations

        expect(recommendations).to be_a(Array)
      end
    end
  end
end
