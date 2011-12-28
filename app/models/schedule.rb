class Schedule < ActiveRecord::Base
  belongs_to :timetables
  belongs_to :matters
end
