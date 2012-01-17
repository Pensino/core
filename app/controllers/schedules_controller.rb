class SchedulesController < ApplicationController
  def create
    @timetable = Timetable.find(params[:timetable_id])
    @schedule = @timetable.schedules.create(params[:schedule])
    redirect_to timetable_path(@timetable)
  end
end
