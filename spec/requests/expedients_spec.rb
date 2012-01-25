require 'spec_helper'

describe "Expedients" do
  describe "GET /expedients" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get expedients_path
      response.status.should be(200)
    end
  end
end
