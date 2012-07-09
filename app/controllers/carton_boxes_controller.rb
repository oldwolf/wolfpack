class CartonBoxesController < ApplicationController
  # GET /carton_boxes
  # GET /carton_boxes.json
  def index
    @carton_boxes = CartonBox.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @carton_boxes }
    end
  end

  # GET /carton_boxes/1
  # GET /carton_boxes/1.json
  def show
    @carton_box = CartonBox.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @carton_box }
    end
  end

  # GET /carton_boxes/new
  # GET /carton_boxes/new.json
  def new
    @carton_box = CartonBox.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @carton_box }
    end
  end

  # GET /carton_boxes/1/edit
  def edit
    @carton_box = CartonBox.find(params[:id])
  end

  # POST /carton_boxes
  # POST /carton_boxes.json
  def create
    @carton_box = CartonBox.new(params[:carton_box])

    respond_to do |format|
      if @carton_box.save
        format.html { redirect_to @carton_box, notice: 'Carton box was successfully created.' }
        format.json { render json: @carton_box, status: :created, location: @carton_box }
      else
        format.html { render action: "new" }
        format.json { render json: @carton_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /carton_boxes/1
  # PUT /carton_boxes/1.json
  def update
    @carton_box = CartonBox.find(params[:id])

    respond_to do |format|
      if @carton_box.update_attributes(params[:carton_box])
        format.html { redirect_to @carton_box, notice: 'Carton box was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @carton_box.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carton_boxes/1
  # DELETE /carton_boxes/1.json
  def destroy
    @carton_box = CartonBox.find(params[:id])
    @carton_box.destroy

    respond_to do |format|
      format.html { redirect_to carton_boxes_url }
      format.json { head :no_content }
    end
  end
end
