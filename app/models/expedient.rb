class Expedient < ActiveRecord::Base
  has_many :time_gaps
  
  validate :start_time_must_be_minor_than_end_time, :if => Proc.new {|exp| exp.start_time.present? and exp.end_time.present?}
  validates_presence_of :start_time, :end_time, :quantity_lessons
  validates_uniqueness_of :day_of_week, :scope => [:start_time], :message => I18n.t("expedient_already_taken", :time => "start")
  validates_uniqueness_of :day_of_week, :scope => [:end_time], :message => I18n.t("expedient_already_taken", :time => "end")
  
  # Used to compare 2 DateTimes and check if they are valid to use inside the Expedient scope
  def is_date_range_valid?(options={})
    start_date = options[:start]
    end_date   = options[:end]
    return false if start_date == nil or end_date == nil
    return false unless start_date.is_a?(Time) and end_date.is_a?(Time)
    return false unless not(day_of_week.present?) or (start_date.send day_of_week + "?" and end_date.send day_of_week + "?")

    #equalizing the dates(d m y) to can use the ruby compare of dates
    start_date = start_date.change  :day   => start_time.day,
                                    :month => start_time.month,
                                    :year  => start_time.year,
                                    :hour  => start_date.hour, # preserves hour/minute/second
                                    :min   => start_date.min,
                                    :sec   => start_date.sec
    
    end_date = end_date.change      :day   => end_time.day,
                                    :month => end_time.month,
                                    :year  => end_time.year,
                                    :hour  => end_date.hour, # preserves hour/minute/second
                                    :min   => end_date.min,
                                    :sec   => end_date.sec
    
    return start_date >= start_time && end_date <= end_time
  end
  
private
    def start_time_must_be_minor_than_end_time
        errors.add :start_time, "must be minor than end time" unless start_time < end_time
    end
end
