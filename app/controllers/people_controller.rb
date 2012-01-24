class PeopleController < ApplicationController
  # GET /people
  # GET /people.json
  def index
    @people = people_type.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @people }
    end
  end

  # GET /people/1
  # GET /people/1.json
  def show
    @person = people_type.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @person }
    end
  end

  # GET /people/new
  # GET /people/new.json
  def new
    @person = people_type.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @person }
    end
  end

  # GET /people/1/edit
  def edit
    @person = people_type.find(params[:id])
  end

  # POST /people
  # POST /people.json
  def create
    @person = people_type.new(params[:person])

    case params[:type]
      when "Coordinator" 
        @person.update_attributes(params[:coordinator])
      when "Professor" 
        @person.update_attributes(params[:professor])
      when "Student"
        @person.update_attributes(params[:student])
    end

    respond_to do |format|
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully created.' }
        format.json { render json: @person, status: :created, location: @person }
      else
        format.html { render action: "new" }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /people/1
  # PUT /people/1.json
  def update
    @person = people_type.find(params[:id])

    respond_to do |format|
      case params[:type]
        when "Coordinator" 
          @person.update_attributes(params[:coordinator])
        when "Professor"
          puts "zicaaaaaa" 
          puts params[:professor]
          @person.update_attributes(params[:professor])
          puts @person.name
        when "Student"
          @person.update_attributes(params[:student])
      end
      if @person.save
        format.html { redirect_to @person, notice: 'Person was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /people/1
  # DELETE /people/1.json
  def destroy
    @person = people_type.find(params[:id])
    @person.destroy

    respond_to do |format|
      format.html { redirect_to :action => "index" }
      format.json { head :ok }
    end
  end

private
  def people_type
    params[:type].constantize
  end
end