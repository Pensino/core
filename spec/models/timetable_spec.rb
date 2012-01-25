require 'spec_helper'

describe Timetable do
  let(:timetable){ Factory.build(:timetable) }
  
  context "Validations" do
    
    it "must be equal when have the same name" do
      tt = Timetable.new({:name => "timetable"})
      (timetable.equal?tt).should be true
    end
    
    it "must not be equal when name is nil" do
      (timetable.equal?nil).should_not be true
    end
    
  end
end
