require 'rails_helper'

describe "user visits "/"" do
  context "should see a from to enter information to generate a recommendation" do
    it "should have a placeholder of 'Bands, Movies, TV Shows, Authors, or Games...' do
      visit '/'

      expect(page).to have_field('Recommendation')
      expect(page).to have_content('Bands, Movies, TV Shows, Authors, or Games...')
    end
  end
end
