require 'spec_helper'

describe "TimeGaps" do
  describe "GET /time_gaps" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get time_gaps_path
      response.status.should be(200)
    end
  end
end
