class Course < ActiveRecord::Base
  has_many :grids
  
  validates_presence_of :name, :quantityLessons
end
