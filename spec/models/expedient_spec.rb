require 'spec_helper'

describe Expedient do
  let(:monday_expedient){ Factory.build(:monday_expedient) }
  let(:tuesday_expedient){ Factory.build(:tuesday_expedient) }
  let(:wednesday_expedient){ Factory.build(:wednesday_expedient) }
  let(:thursday_expedient){ Factory.build(:thursday_expedient) }
  let(:friday_expedient){ Factory.build(:friday_expedient) }
  
  context "Validations" do
    it "should not create without start_time" do
      expedient = Expedient.new(:day_of_week => "monday", :end_time => DateTime.new, :quantity_lessons => 10)
      expedient.should have(1).error_on(:start_time)
    end
    
    it "should not create without end_time" do
      expedient = Expedient.new(:day_of_week => "monday", :start_time => DateTime.new, :quantity_lessons => 10)
      expedient.should have(1).error_on(:end_time)
    end
    
    it "should not create without quantity_lessons" do
      expedient = Expedient.new(:day_of_week => "monday", :end_time => DateTime.new, :start_time => DateTime.new)
      expedient.should have(1).error_on(:quantity_lessons)
    end
    
    it "should not create with same day_of_week AND start_time" do
      Expedient.create!({:day_of_week    => "monday",
                      :start_time       => "2011-12-13 09:00:00",
                      :end_time         => "2011-12-13 11:00:00",
                      :quantity_lessons => 1})
                      
      exp = Expedient.new(:day_of_week  => "monday",
                      :start_time       => "2011-12-13 09:00:00",
                      :end_time         => "2011-12-13 11:30:00",
                      :quantity_lessons => 1)
      exp.should have(1).error_on(:day_of_week)
      exp.errors_on(:day_of_week).should == ["You have an expedient registered with this day of week and start time"]
    end
    
    it "should not create with same day_of_week AND end_time" do
      Expedient.create!({:day_of_week    => "monday",
                      :start_time       => "2011-12-13 09:30:00",
                      :end_time         => "2011-12-13 11:00:00",
                      :quantity_lessons => 1})
                      
      exp = Expedient.new(:day_of_week  => "monday",
                      :start_time       => "2011-12-13 09:00:00",
                      :end_time         => "2011-12-13 11:00:00",
                      :quantity_lessons => 1)
      exp.should have(1).error_on(:day_of_week)
      exp.errors_on(:day_of_week).should == ["You have an expedient registered with this day of week and end time"]
    end
    
    it "start_time must be minor than end_time" do
        exp = Expedient.new(:day_of_week  => "monday",
                      :start_time       => "2011-12-13 09:00:00",
                      :end_time         => "2011-12-13 07:00:00",
                      :quantity_lessons => 4)
      exp.should have(1).error_on(:start_time)
      exp.errors_on(:start_time).should == ["must be minor than end time"]
    end
  end
  
  context "day_of_week" do
    it "on monday, must only work from 09:00 to 10:00" do
      monday_expedient.is_date_range_valid?({:start => DateTime.new(2011, 12, 12, 9, 00, 00), :end => DateTime.new(2011, 12, 12, 10, 00, 00)}).should be true
    end
    it "on wednesday, must only work from 08:00 to 12:00" do 
      # fail tests for not wednesday
      wednesday_expedient.is_date_range_valid?({:start => DateTime.new(2011, 12, 14, 7, 00, 00), :end => DateTime.new(2011, 12, 12, 10, 00, 00)}).should_not be true
      wednesday_expedient.is_date_range_valid?({:start => DateTime.new(2011, 12, 12, 7, 00, 00), :end => DateTime.new(2011, 12, 14, 10, 00, 00)}).should_not be true
      # fail tests for out of time range
      wednesday_expedient.is_date_range_valid?({:start => DateTime.new(2011, 12, 14, 7, 00, 00), :end => DateTime.new(2011, 12, 14, 10, 00, 00)}).should_not be true
      wednesday_expedient.is_date_range_valid?({:start => DateTime.new(2011, 12, 14, 8, 00, 00), :end => DateTime.new(2011, 12, 14, 12, 00, 01)}).should_not be true
      # now everything must go clear :)
      wednesday_expedient.is_date_range_valid?({:start => DateTime.new(2011, 12, 14, 8, 00, 00), :end => DateTime.new(2011, 12, 14, 12, 00, 00)}).should be true
    end
    it "should be valid for any day of week when day_of_week is blank" do
        exp = Expedient.new(:start_time       => "2011-12-13 08:00:00",
                            :end_time         => "2011-12-13 17:00:00",
                            :quantity_lessons => 10)
        exp.is_date_range_valid?({:start => DateTime.new(2011, 12, 12, 8, 00, 00), :end => DateTime.new(2011, 12, 12, 10, 00, 00)}).should be true #monday
        exp.is_date_range_valid?({:start => DateTime.new(2011, 12, 13, 8, 00, 00), :end => DateTime.new(2011, 12, 13, 10, 00, 00)}).should be true #tuesday
        exp.is_date_range_valid?({:start => DateTime.new(2011, 12, 14, 9, 00, 00), :end => DateTime.new(2011, 12, 14, 10, 00, 00)}).should be true #wednesday
        exp.is_date_range_valid?({:start => DateTime.new(2011, 12, 15, 8, 01, 00), :end => DateTime.new(2011, 12, 15, 10, 00, 00)}).should be true #thursday
        exp.is_date_range_valid?({:start => DateTime.new(2011, 12, 16, 8, 00, 01), :end => DateTime.new(2011, 12, 16, 10, 00, 00)}).should be true #friday
        exp.is_date_range_valid?({:start => DateTime.new(2011, 12, 17, 8, 00, 00), :end => DateTime.new(2011, 12, 17, 10, 00, 00)}).should be true #saturday
        exp.is_date_range_valid?({:start => DateTime.new(2011, 12, 18, 8, 00, 00), :end => DateTime.new(2011, 12, 18, 17, 00, 00)}).should be true #sunday
        # fail test for out of time
        exp.is_date_range_valid?({:start => DateTime.new(2011, 12, 18, 7, 00, 00), :end => DateTime.new(2011, 12, 18, 17, 00, 00)}).should_not be true #start => 7:00
    end
  end
end
