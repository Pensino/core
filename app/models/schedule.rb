class Schedule < ActiveRecord::Base
  belongs_to :timetable
  belongs_to :matter
  belongs_to :time_gap
  
  validates_uniqueness_of :time_gap_id, :scope => :timetable_id
  validates_presence_of :timetable_id, :matter_id, :time_gap_id
end
