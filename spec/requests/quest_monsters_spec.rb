require 'rails_helper'

RSpec.describe "QuestMonsters", type: :request do
  describe "GET /quest_monsters" do
    it "works! (now write some real specs)" do
      get quest_monsters_path
      expect(response).to have_http_status(200)
    end
  end
end
