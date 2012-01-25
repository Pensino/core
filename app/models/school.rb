class School < ActiveRecord::Base
  
  has_many :classroom
  
  validates_uniqueness_of :name
  validates_presence_of   :name
end
