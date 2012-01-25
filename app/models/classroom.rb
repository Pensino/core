class Classroom < ActiveRecord::Base
  belongs_to              :school, :foreign_key => "school_id"
  
  validates_uniqueness_of :name
  validates_presence_of   :school, :name
end
