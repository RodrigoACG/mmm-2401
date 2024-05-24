require "rails_helper"

RSpec.describe "Food Index" do

  describe '#us 1' do
    it 'searches for certian item' do
      # As a user,

      # When I visit "/"
      visit "/"
      # And I fill in the search form with "sweet potatoes" (Note: Use the existing search form)
      fill_in :q, with: "sweet potatoes"
      # And I click "Search"
      click_on ("Search")
      # Then I should be on page "/foods"
      expect(current_path).to eq("/foods")
      # And I should see a total number of items returned by the search. (Note: "sweet potatoes" should yield >30,000 results)
      expect(page).to have_content("30,000 results found")
      # Then I should see a list of TEN foods that contain the ingredient "sweet potatoes"
      # And for each of the foods I should see:
     
        # - The food's GTIN/UPC code
        # - The food's description
        # - The food's Brand Owner
        # - The food's ingredients

    end
  end
end