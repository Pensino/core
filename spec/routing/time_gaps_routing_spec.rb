require "spec_helper"

describe TimeGapsController do
  describe "routing" do

    it "routes to #index" do
      get("/time_gaps").should route_to("time_gaps#index")
    end

    it "routes to #new" do
      get("/time_gaps/new").should route_to("time_gaps#new")
    end

    it "routes to #show" do
      get("/time_gaps/1").should route_to("time_gaps#show", :id => "1")
    end

    it "routes to #edit" do
      get("/time_gaps/1/edit").should route_to("time_gaps#edit", :id => "1")
    end

    it "routes to #create" do
      post("/time_gaps").should route_to("time_gaps#create")
    end

    it "routes to #update" do
      put("/time_gaps/1").should route_to("time_gaps#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/time_gaps/1").should route_to("time_gaps#destroy", :id => "1")
    end

  end
end
