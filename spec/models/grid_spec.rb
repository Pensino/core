require "spec_helper"

describe Grid do

  let(:grid){ Factory.build(:grid_complete) }
  
  context "Test of Tests" do
    it "must have matter called Matematica1" do
      grid.matters.first.name == "Matematica1"
    end
    
    it "must have two matters" do
      grid.matters.size.should == 2
    end
    
    it "must belongs to Course called Ensino Basico" do
      grid.course.name.should == "Ensino Basico"
    end
  end

end