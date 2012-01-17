class TimeGap < ActiveRecord::Base
  belongs_to :expedient
  has_many :timetables, :through => :schedules
  
  WEEK_DAYS = {:sunday => 0, :monday => 1, :tuesday => 2, :wednesday => 3, :thursday => 4, :friday => 5, :saturday => 6}
  validates_presence_of :start_time, :end_time, :quantity_lessons, :expedient
  validate :validate_date_range
  
private   
  # check if the dates are within some Expedient
  def validate_date_range

    unless day_of_week.present? and WEEK_DAYS.include?(day_of_week.to_sym)
      errors.add(:day_of_week, "doesn't exist") 
      return false
    end

    start_time = adjust_date(self.start_time)
    end_time = adjust_date(self.end_time)
    
    unless expedient.is_date_range_valid? :start => start_time, :end => end_time
      errors.add(:base, "out of expedient") 
      return false
    end
    
    true
  end
  
  # converts the date to the nearest of the same day of the week
  def adjust_date(datetime)
    datetime + (WEEK_DAYS[day_of_week.to_sym] - datetime.wday).days if datetime.is_a?(Time)
  end
  
public
  def to_s()
    date_format = "%H:%M"
    all = "all"
    "#{day_of_week.blank? ? all : day_of_week} - #{start_time.strftime(date_format)} to #{end_time.strftime(date_format)}"
  end
end