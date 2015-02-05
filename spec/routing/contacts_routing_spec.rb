require "rails_helper"

describe ContactsController do
  describe "routing" do
    it "routes to #new" do
      expect(:get => "/contacts/new").to route_to("contacts#new")
    end

    it "routes to #create" do
      expect(:post => "/contacts").to route_to("contacts#create")
    end
  end
end
