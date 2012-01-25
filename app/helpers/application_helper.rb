module ApplicationHelper
  
  def error_messages_for(resource)
   render "shared/error_messages", :resource => resource
  end
  
  def days_of_week()
    [:monday, :tuesday, :wednesday, :thursday, :friday, :saturday, :sunday]
  end
  
end
