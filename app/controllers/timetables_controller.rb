class TimetablesController < ApplicationController
  before_filter :load_resources, :except => %w(destroy index)
  
  # GET /timetables
  # GET /timetables.json
  def index
    @timetables = Timetable.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @timetables }
    end
  end

  # GET /timetables/1
  # GET /timetables/1.json
  def show
    @timetable = Timetable.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @timetable }
    end
  end

  # GET /timetables/new
  # GET /timetables/new.json
  def new
    @timetable = Timetable.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @timetable }
    end
  end

  # GET /timetables/1/edit
  def edit
    @timetable = Timetable.find(params[:id])
  end

  # POST /timetables
  # POST /timetables.json
  def create
    @timetable = Timetable.new(params[:timetable])

    respond_to do |format|
      if @timetable.save
        format.html { redirect_to @timetable, notice: 'Timetable was successfully created.' }
        format.json { render json: @timetable, status: :created, location: @timetable }
      else
        format.html { render action: "new" }
        format.json { render json: @timetable.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /timetables/1
  # PUT /timetables/1.json
  def update
    @timetable = Timetable.find(params[:id])

    respond_to do |format|
      if @timetable.update_attributes(params[:timetable])
        format.html { redirect_to @timetable, notice: 'Timetable was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @timetable.errors, status: :unprocessable_entity }
      end  
    end
  end

  # DELETE /timetables/1
  # DELETE /timetables/1.json
  def destroy
    @timetable = Timetable.find(params[:id])
    @timetable.destroy

    respond_to do |format|
      format.html { redirect_to timetables_url }
      format.json { head :ok }
    end
  end
protected
  def load_resources
    @grids = Grid.where(:draft => false)
    @grids.sort!{|x, y| x.name_with_course <=> y.name_with_course} #sorting by course name
    @time_gaps = TimeGap.all.sort!{|x,y| x.day_of_week <=> y.day_of_week}
  end
end
