class GridsController < ApplicationController
  before_filter :load_resources, :only => %w(new create edit update)
  
  # GET /grids
  # GET /grids.json
  def index
    @grids = Grid.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @grids }
    end
  end

  # GET /grids/1
  # GET /grids/1.json
  def show
    @grid = Grid.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @grid }
    end
  end

  # GET /grids/new
  # GET /grids/new.json
  def new
    @grid = Grid.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @grid }
    end
  end

  # GET /grids/1/edit
  def edit
    @grid = Grid.find(params[:id])
  end

  # POST /grids
  # POST /grids.json
  def create
    @grid = Grid.new(params[:grid])
    @matters = Matter.all
    
    respond_to do |format|
      if @grid.save
        format.html { redirect_to @grid, notice: 'Grid was successfully created.' }
        format.json { render json: @grid, status: :created, location: @grid }
      else
        format.html { render action: "new" }
        format.json { render json: @grid.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /grids/1
  # PUT /grids/1.json
  def update
    @grid = Grid.find(params[:id])

    respond_to do |format|
      if @grid.update_attributes(params[:grid])
        format.html { redirect_to @grid, notice: 'Grid was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @grid.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grids/1
  # DELETE /grids/1.json
  def destroy
    @grid = Grid.find(params[:id])
    @grid.destroy

    respond_to do |format|
      format.html { redirect_to grids_url }
      format.json { head :ok }
    end
  end

protected
  def load_resources
    @matters = Matter.all
    @courses = Course.all
  end
  
end
