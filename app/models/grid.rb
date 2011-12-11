class Grid < ActiveRecord::Base
  belongs_to                :course, :foreign_key => "course_id"
  has_and_belongs_to_many   :matters

  validates_presence_of :course, :name, :matters

end
