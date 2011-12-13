require "spec_helper"

describe Matter do

  let(:matter){ Factory.build(:matter) }
  
  context "Test of Tests" do
    it "must have a name" do
      matter.name.should_not be_nil
    end
  end

end