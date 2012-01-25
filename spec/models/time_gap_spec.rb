require 'spec_helper'

describe TimeGap do
  let(:time_gap){ Factory.build(:time_gap) }
  
  context "Validations" do
    it "must have day_of_week, start_time, end_time and quantity_lessons" do
      tg = TimeGap.new()
      tg.should_not be_valid
      tg.errors_on(:day_of_week).should ==  ["doesn't exist"]
      tg.errors_on(:start_time).should ==  ["can't be blank"]
      tg.errors_on(:end_time).should ==  ["can't be blank"]
      tg.errors_on(:quantity_lessons).should ==  ["can't be blank"]

    end
    
    it "must have a valid day_of_week" do
      tg = TimeGap.new(:day_of_week       => "wrong_day",
                       :start_time        => DateTime.now,
                       :end_time          => DateTime.now,
                       :quantity_lessons  => 1)
      tg.should_not be_valid
      tg.errors_on(:day_of_week).should == ["doesn't exist"]
    end
    
    
    it "must be valid with all parameters" do
      tg = TimeGap.new(:day_of_week       => "friday",
                       :start_time        => DateTime.new(2011, 12, 16,  9, 00, 00),
                       :end_time          => DateTime.new(2011, 12, 16, 10, 00, 00),
                       :quantity_lessons  => 1)
      tg.should be_valid
    end  
  end
end
