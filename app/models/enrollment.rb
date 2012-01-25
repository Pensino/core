class Enrollment < ActiveRecord::Base
  belongs_to :student, :class_name => "Student", :foreign_key => :student_id
  belongs_to :timetable
  belongs_to :matter
  
  validates_uniqueness_of :student_id, :scope => [:matter_id, :timetable_id]
end