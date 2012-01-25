class Schedule < ActiveRecord::Base
  belongs_to :timetable
  belongs_to :matter
  belongs_to :time_gap
  belongs_to :professor, :class_name => "Professor", :foreign_key => :professor_id
  
  validates_uniqueness_of :time_gap_id, :scope => :timetable_id
  validates_uniqueness_of :time_gap_id, :scope => :professor_id
  validates_presence_of :timetable_id, :matter_id, :time_gap_id
end
