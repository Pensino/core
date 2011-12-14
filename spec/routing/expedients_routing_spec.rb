require "spec_helper"

describe ExpedientsController do
  describe "routing" do

    it "routes to #index" do
      get("/expedients").should route_to("expedients#index")
    end

    it "routes to #new" do
      get("/expedients/new").should route_to("expedients#new")
    end

    it "routes to #show" do
      get("/expedients/1").should route_to("expedients#show", :id => "1")
    end

    it "routes to #edit" do
      get("/expedients/1/edit").should route_to("expedients#edit", :id => "1")
    end

    it "routes to #create" do
      post("/expedients").should route_to("expedients#create")
    end

    it "routes to #update" do
      put("/expedients/1").should route_to("expedients#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/expedients/1").should route_to("expedients#destroy", :id => "1")
    end

  end
end
