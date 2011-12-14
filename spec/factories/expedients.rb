# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :expedient do
  end
  
  Factory.define :monday_expedient, :parent => :expedient do |expedient|
    expedient.day_of_week "monday"
    expedient.start_time "2011-12-13 09:00:00"
    expedient.end_time "2011-12-13 10:00:00"
    expedient.quantity_lessons 1
  end
  
  factory :tuesday_expedient, :parent => :expedient do |expedient|
    expedient.day_of_week "tuesday"
    expedient.start_time "2011-12-13 09:58:12"
    expedient.end_time "2011-12-13 09:58:12"
    expedient.quantity_lessons 1
  end
  
  factory :wednesday_expedient, :parent => :expedient do |expedient|
    expedient.day_of_week "wednesday"
    expedient.start_time "2010-9-1 08:00:00"
    expedient.end_time "2010-1-9 12:00:00"
    expedient.quantity_lessons 1
  end
  
  factory :thursday_expedient, :parent => :expedient do |expedient|
    expedient.day_of_week "thursday"
    expedient.start_time "2011-12-13 09:58:12"
    expedient.end_time "2011-12-13 09:58:12"
    expedient.quantity_lessons 1
  end
  
  factory :friday_expedient, :parent => :expedient do |expedient|
    expedient.day_of_week "friday"
    expedient.start_time "2011-12-13 09:58:12"
    expedient.end_time "2011-12-13 09:58:12"
    expedient.quantity_lessons 1
  end
end