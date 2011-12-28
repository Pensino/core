# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :time_gap do
    day_of_week "friday"
    start_time "2011-12-16 09:00:14"
    end_time "2011-12-16 09:59:59"
    quantity_lessons 1
  end
end
