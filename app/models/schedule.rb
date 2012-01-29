class Schedule < ActiveRecord::Base
  belongs_to :timetable
  belongs_to :matter
  has_and_belongs_to_many :time_gaps
  belongs_to :professor, :class_name => "Professor", :foreign_key => :professor_id
  
  validates_uniqueness_of :matter_id
  validates_presence_of :timetable_id, :matter_id, :time_gap_ids
end
