class Matter < ActiveRecord::Base
  has_and_belongs_to_many :grids
  has_many :schedules
  has_many :timetables, :through => :schedules
  
  validates_presence_of :name, :quantityLessons
end
