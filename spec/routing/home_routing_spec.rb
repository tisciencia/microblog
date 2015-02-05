require "rails_helper"

describe HomeController do
  describe "routing" do
    it "routes to #root" do
      expect(:get => "/").to route_to("home#index")
    end

    it "routes to #about-me" do
      expect(:get => "/about-me").to route_to("home#aboutme")
    end
  end
end
