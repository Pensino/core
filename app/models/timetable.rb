class Timetable < ActiveRecord::Base
  belongs_to :grid
  has_many :schedules,  :dependent => :delete_all
  has_many :matters,    :through => :schedules
  has_many :time_gaps,  :through => :schedules, :uniq => true
  
  validates_presence_of :grid, :name
  validates_uniqueness_of :name, :grid_id
  validates_associated :schedules
  
  def equal?(timetable)
    return false unless timetable.is_a?(Timetable)
    self.name == timetable.name
  end
end
