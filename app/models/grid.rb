class Grid < ActiveRecord::Base
  belongs_to                :course, :foreign_key => "course_id"
  has_and_belongs_to_many   :matters
  belongs_to                :coordinator, :class_name => "Coordinator", :foreign_key => :coordinator_id

  validates_presence_of :course, :name, :matters, :coordinator
  validates_uniqueness_of :name
  
  validate :quantityLessonsValidate 
  
  def name_with_course
    "#{course.name}, #{name}"
  end
  
  def quantityLessonsValidate
    
        
    quantityLessonsTotal = 0
    matters.each { |matter| quantityLessonsTotal += matter.quantityLessons }
    
    if course    
      if course.quantityLessons != quantityLessonsTotal
        errors.add(:base, "quantity lessons error")
        return false
      end
    end
  end

end
