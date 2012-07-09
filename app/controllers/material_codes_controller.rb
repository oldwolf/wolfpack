class MaterialCodesController < ApplicationController
  # GET /material_codes
  # GET /material_codes.json
  def index
    @material_codes = MaterialCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @material_codes }
    end
  end

  # GET /material_codes/1
  # GET /material_codes/1.json
  def show
    @material_code = MaterialCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @material_code }
    end
  end

  # GET /material_codes/new
  # GET /material_codes/new.json
  def new
    @material_code = MaterialCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @material_code }
    end
  end

  # GET /material_codes/1/edit
  def edit
    @material_code = MaterialCode.find(params[:id])
  end

  # POST /material_codes
  # POST /material_codes.json
  def create
    @material_code = MaterialCode.new(params[:material_code])

    respond_to do |format|
      if @material_code.save
        format.html { redirect_to @material_code, notice: 'Material code was successfully created.' }
        format.json { render json: @material_code, status: :created, location: @material_code }
      else
        format.html { render action: "new" }
        format.json { render json: @material_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /material_codes/1
  # PUT /material_codes/1.json
  def update
    @material_code = MaterialCode.find(params[:id])

    respond_to do |format|
      if @material_code.update_attributes(params[:material_code])
        format.html { redirect_to @material_code, notice: 'Material code was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @material_code.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /material_codes/1
  # DELETE /material_codes/1.json
  def destroy
    @material_code = MaterialCode.find(params[:id])
    @material_code.destroy

    respond_to do |format|
      format.html { redirect_to material_codes_url }
      format.json { head :no_content }
    end
  end
end
