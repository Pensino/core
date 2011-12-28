class Timetable < ActiveRecord::Base
  belongs_to :grid
  has_many :schedules
  has_many :matters, :through => :schedules
end
