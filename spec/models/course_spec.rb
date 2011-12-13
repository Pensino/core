require "spec_helper"

describe Course do

  let(:course){ Factory.build(:course) }
  
  context "Test of Tests" do
    it "must be called Ensino Basico" do
      course.name.should == "Ensino Basico"
    end
  end

end