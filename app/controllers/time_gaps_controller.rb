class TimeGapsController < ApplicationController
  # GET /time_gaps
  # GET /time_gaps.json
  def index
    @time_gaps = TimeGap.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @time_gaps }
    end
  end

  # GET /time_gaps/1
  # GET /time_gaps/1.json
  def show
    @time_gap = TimeGap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @time_gap }
    end
  end

  # GET /time_gaps/new
  # GET /time_gaps/new.json
  def new
    @time_gap = TimeGap.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @time_gap }
    end
  end

  # GET /time_gaps/1/edit
  def edit
    @time_gap = TimeGap.find(params[:id])
  end

  # POST /time_gaps
  # POST /time_gaps.json
  def create
    @time_gap = TimeGap.new(params[:time_gap])

    respond_to do |format|
      if @time_gap.save
        format.html { redirect_to @time_gap, notice: 'Time gap was successfully created.' }
        format.json { render json: @time_gap, status: :created, location: @time_gap }
      else
        format.html { render action: "new" }
        format.json { render json: @time_gap.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /time_gaps/1
  # PUT /time_gaps/1.json
  def update
    @time_gap = TimeGap.find(params[:id])

    respond_to do |format|
      if @time_gap.update_attributes(params[:time_gap])
        format.html { redirect_to @time_gap, notice: 'Time gap was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @time_gap.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /time_gaps/1
  # DELETE /time_gaps/1.json
  def destroy
    @time_gap = TimeGap.find(params[:id])
    @time_gap.destroy

    respond_to do |format|
      format.html { redirect_to time_gaps_url }
      format.json { head :ok }
    end
  end
end
