class Grid < ActiveRecord::Base
  belongs_to                :course
  has_and_belongs_to_many   :matters

  validates_presence_of :course, :name, :matters  

end
