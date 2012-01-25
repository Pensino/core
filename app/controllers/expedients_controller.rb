class ExpedientsController < ApplicationController
  # GET /expedients
  # GET /expedients.json
  def index
    @expedients = Expedient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @expedients }
    end
  end

  # GET /expedients/1
  # GET /expedients/1.json
  def show
    @expedient = Expedient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @expedient }
    end
  end

  # GET /expedients/new
  # GET /expedients/new.json
  def new
    @expedient = Expedient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @expedient }
    end
  end

  # GET /expedients/1/edit
  def edit
    @expedient = Expedient.find(params[:id])
  end

  # POST /expedients
  # POST /expedients.json
  def create
    @expedient = Expedient.new(params[:expedient])

    respond_to do |format|
      if @expedient.save
        format.html { redirect_to @expedient, notice: 'Expedient was successfully created.' }
        format.json { render json: @expedient, status: :created, location: @expedient }
      else
        format.html { render action: "new" }
        format.json { render json: @expedient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /expedients/1
  # PUT /expedients/1.json
  def update
    @expedient = Expedient.find(params[:id])

    respond_to do |format|
      if @expedient.update_attributes(params[:expedient])
        format.html { redirect_to @expedient, notice: 'Expedient was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @expedient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /expedients/1
  # DELETE /expedients/1.json
  def destroy
    @expedient = Expedient.find(params[:id])
    @expedient.destroy

    respond_to do |format|
      format.html { redirect_to expedients_url }
      format.json { head :ok }
    end
  end
end
