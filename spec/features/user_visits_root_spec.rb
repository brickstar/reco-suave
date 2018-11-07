require 'rails_helper'

describe "user visits root path" do
  context "should see a form to enter information to generate a recommendation" do
    it "should have a placeholder of 'Bands, Movies, TV Shows, Authors, or Games...'" do
      visit '/'

      expect(page).to have_field('q')
      expect(page).to have_xpath("//input[@value='Bands, Movies, TV Shows, Authors, or Games...']")
    end
  end
  context 'fills in text field with a recommendation prompt' do
    it 'should land on search#index and see related recommendations' do
      visit '/'

      fill_in "q", with: "Beatles"
      click_on "Search"

      expect(current_path).to eq(recommendations_path)
      expect(page).to have_link("wiki")
    end
  end
end
