require "rails_helper"

RSpec.describe QuestMonstersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/quest_monsters").to route_to("quest_monsters#index")
    end


    it "routes to #show" do
      expect(:get => "/quest_monsters/1").to route_to("quest_monsters#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/quest_monsters").to route_to("quest_monsters#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/quest_monsters/1").to route_to("quest_monsters#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/quest_monsters/1").to route_to("quest_monsters#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/quest_monsters/1").to route_to("quest_monsters#destroy", :id => "1")
    end

  end
end
