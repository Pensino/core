class Matter < ActiveRecord::Base
  has_and_belongs_to_many :grids
  
  validates_presence_of :name, :quantityLessons
end
